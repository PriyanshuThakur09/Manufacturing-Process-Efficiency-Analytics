SELECT * FROM line_productivity LIMIT 5;
SELECT * FROM line_downtime;


SELECT 
    Batch,
    COALESCE(Factor1,0) + COALESCE(Factor2,0) + COALESCE(Factor3,0) +
    COALESCE(Factor4,0) + COALESCE(Factor5,0) + COALESCE(Factor6,0) +
    COALESCE(Factor7,0) + COALESCE(Factor8,0) + COALESCE(Factor9,0) +
    COALESCE(Factor10,0) + COALESCE(Factor11,0) + COALESCE(Factor12,0) 
    AS Total_Downtime_Minutes
FROM line_downtime;


SELECT 
    p.Date,
    p.Product,
    p.Batch,
    p.Operator,
    p.start_time,
    p.end_time,
    (EXTRACT(EPOCH FROM (p.end_time - p.start_time))/60)::INT AS Planned_Time_Minutes,
    d.Total_Downtime_Minutes
FROM line_productivity p
LEFT JOIN (
    SELECT 
        Batch,
        COALESCE(Factor1,0) + COALESCE(Factor2,0) + COALESCE(Factor3,0) +
        COALESCE(Factor4,0) + COALESCE(Factor5,0) + COALESCE(Factor6,0) +
        COALESCE(Factor7,0) + COALESCE(Factor8,0) + COALESCE(Factor9,0) +
        COALESCE(Factor10,0) + COALESCE(Factor11,0) + COALESCE(Factor12,0) 
        AS Total_Downtime_Minutes
    FROM line_downtime
) d ON p.Batch = d.Batch;



WITH joined AS (
    SELECT 
        p.Date,
        p.Product,
        p.Batch,
        p.Operator,
        (EXTRACT(EPOCH FROM (p.end_time - p.start_time)) / 60)::INT AS Planned_Time_Minutes,
        COALESCE(d.Total_Downtime_Minutes, 0) AS Total_Downtime_Minutes
    FROM line_productivity p
    LEFT JOIN (
        SELECT 
            Batch,
            COALESCE(Factor1, 0) + COALESCE(Factor2, 0) + COALESCE(Factor3, 0) +
            COALESCE(Factor4, 0) + COALESCE(Factor5, 0) + COALESCE(Factor6, 0) +
            COALESCE(Factor7, 0) + COALESCE(Factor8, 0) + COALESCE(Factor9, 0) +
            COALESCE(Factor10, 0) + COALESCE(Factor11, 0) + COALESCE(Factor12, 0) 
            AS Total_Downtime_Minutes
        FROM line_downtime
    ) d ON p.Batch = d.Batch
)
SELECT 
    Date,
    Product,
    Batch,
    Operator,
    Planned_Time_Minutes,
    Total_Downtime_Minutes,
    (Planned_Time_Minutes - Total_Downtime_Minutes) AS Run_Time,
    ROUND(
        ((Planned_Time_Minutes - Total_Downtime_Minutes) * 1.0 / Planned_Time_Minutes)::NUMERIC, 
        3
    ) AS Availability
FROM joined;


