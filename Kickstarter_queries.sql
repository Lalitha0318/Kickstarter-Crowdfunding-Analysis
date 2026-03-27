use kickstarter_crowdfunding;
-- Total Projects
SELECT 
    COUNT(*) AS ProjectID
FROM 
    kickstarter_crowdfunding.projects;
-- Total Projects
SELECT 
    COUNT(*) AS ProjectID
FROM 
    kickstarter_crowdfunding.projects;


-- Total Categories
SELECT 
    COUNT(DISTINCT category_id) AS total_categories
FROM 
    kickstarter_crowdfunding.projects;


-- % of successful projects
SELECT 
    (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS percent_successful_projects
FROM 
    kickstarter_crowdfunding.projects;


-- Avg no of days for successful Projects
SELECT 
    ROUND(AVG(DATEDIFF(
        FROM_UNIXTIME(successful_at), 
        FROM_UNIXTIME(created_at)
    )), 2) AS avg_days_successful_projects
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful';


-- No of backers for successful project
SELECT 
    SUM(backers_count) AS total_backers_successful
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful';
    

-- Total Number of Projects based on Outcome
SELECT state, COUNT(*) AS total_projects
FROM kickstarter_crowdfunding.projects
GROUP BY state
ORDER BY total_projects DESC;


-- Total Number of Projects Based on Locations --
SELECT country, COUNT(*) AS total_projects
FROM kickstarter_crowdfunding.projects
GROUP BY country
ORDER BY total_projects DESC;


-- Total Number of Projects Based on Category --
SELECT 
    category_id,
    COUNT(*) AS total_projects
FROM 
    kickstarter_crowdfunding.projects
GROUP BY 
    category_id
ORDER BY 
    total_projects DESC;


-- Total Number of Projects By Year, Quarter & Month --
SELECT 
    YEAR(FROM_UNIXTIME(created_at)) AS year,
    QUARTER(FROM_UNIXTIME(created_at)) AS quarter,
    MONTHNAME(FROM_UNIXTIME(created_at)) AS month,
    COUNT(*) AS total_projects
FROM 
    kickstarter_crowdfunding.projects
GROUP BY 
    YEAR(FROM_UNIXTIME(created_at)), 
    QUARTER(FROM_UNIXTIME(created_at)), 
    MONTHNAME(FROM_UNIXTIME(created_at))
ORDER BY 
    YEAR(FROM_UNIXTIME(created_at)) DESC, 
    QUARTER(FROM_UNIXTIME(created_at)), 
    MONTHNAME(FROM_UNIXTIME(created_at));
    
    
-- Amouont raised by successful projects
SELECT 
    ROUND(SUM(pledged * static_usd_rate), 2) AS total_amount_raised_usd
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful';

    
    -- No of backers for successful projects
SELECT 
    name AS project_name,
    state,
    backers_count
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful'
ORDER BY 
    backers_count DESC;
    
    
    -- Average Number of Days for Successful Projects --
SELECT 
    state AS project,
    AVG(DATEDIFF(FROM_UNIXTIME(successful_at), FROM_UNIXTIME(created_at))) AS avg_project_duration_days
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful'
GROUP BY 
    state
ORDER BY 
    avg_project_duration_days DESC;


-- Top 10 successful projects based on number of backers
SELECT 
    name AS project_name,
    backers_count,
    pledged,
    ROUND(pledged * static_usd_rate, 2) AS pledged_usd
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful'
ORDER BY 
    backers_count DESC
LIMIT 10;


-- Top 10 successful projects based on amount raised
SELECT 
    name AS project_name,
    ROUND(pledged * static_usd_rate, 2) AS amount_raised_usd
FROM 
    kickstarter_crowdfunding.projects
WHERE 
    state = 'successful'
ORDER BY 
    amount_raised_usd DESC
LIMIT 10;


-- Percentage of Successful Projects Overall --
SELECT 
    (COUNT(CASE WHEN state = 'successful' THEN 1 END) * 100.0 / COUNT(*)) AS success_percentage
FROM 
    kickstarter_crowdfunding.projects;


-- Percentage of successful projects by category
SELECT 
    category_id,
    ROUND(
        (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 
        2
    ) AS success_percentage
FROM 
    kickstarter_crowdfunding.projects
GROUP BY 
    category_id
ORDER BY 
    success_percentage DESC;


-- Percentage of Successful Projects by Year, Quarter, Month 
SELECT 
    YEAR(FROM_UNIXTIME(created_at)) AS year,
    QUARTER(FROM_UNIXTIME(created_at)) AS quarter,
    MONTH(FROM_UNIXTIME(created_at)) AS month_number,
    MONTHNAME(FROM_UNIXTIME(created_at)) AS month_name,
    
    COUNT(*) AS total_projects,
    
    SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS successful_projects,
    
    ROUND(
        (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 
        2
    ) AS success_percentage
FROM 
    kickstarter_crowdfunding.projects
GROUP BY 
    YEAR(FROM_UNIXTIME(created_at)), 
    QUARTER(FROM_UNIXTIME(created_at)), 
    MONTH(FROM_UNIXTIME(created_at)),
    MONTHNAME(FROM_UNIXTIME(created_at))
ORDER BY 
    year DESC, 
    quarter, 
    month_number;


-- Percentage of Successful Projects by Goal Range --
SELECT 
    CASE 
        WHEN (goal * static_usd_rate) < 5000 THEN 'less than 5000'
        WHEN (goal * static_usd_rate) BETWEEN 5000 AND 20000 THEN '5000 to 20000'
        WHEN (goal * static_usd_rate) BETWEEN 20000 AND 50000 THEN '20000 to 50000'
        WHEN (goal * static_usd_rate) BETWEEN 50000 AND 100000 THEN '50000 to 100000'
        ELSE 'greater than 100000'
    END AS goal_range,
    COUNT(ProjectID) AS total_projects,
    COUNT(CASE WHEN state = 'successful' THEN 1 END) AS successful_projects,
    (COUNT(CASE WHEN state = 'successful' THEN 1 END) * 100.0 / COUNT(ProjectID)) AS success_percentage
FROM 
    kickstarter_crowdfunding.projects
GROUP BY 
    goal_range
ORDER BY 
    success_percentage DESC;
