USE marketing_db;
SELECT
    f.record_id,
    f.date,
    f.campaign_id,
    c.campaign_name,
    c.channel,
    c.objective,
    c.start_date   AS campaign_start_date,
    c.budget       AS campaign_budget,
    f.product_id,
    p.product_name,
    p.product_type,
    f.segment_id,
    s.segment_name,
    f.impressions,
    f.clicks,
    f.conversions,
    f.spend,
    f.revenue
FROM fact_campaign_daily f
LEFT JOIN dim_campaign c ON f.campaign_id = c.campaign_id
LEFT JOIN dim_product  p ON f.product_id  = p.product_id
LEFT JOIN dim_segment  s ON f.segment_id  = s.segment_id
ORDER BY f.record_id;