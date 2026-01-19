SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM churn_dataset
GROUP BY PaymentMethod;


SELECT
    Churn,
    AVG(MonthlyCharges) AS avg_monthly_charges
FROM churn_dataset
GROUP BY Churn;