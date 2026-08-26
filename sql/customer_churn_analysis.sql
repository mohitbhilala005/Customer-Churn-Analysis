USE customer_churn;

-- =====================================================
-- CUSTOMER CHURN ANALYSIS
-- Database: customer_churn
-- Table: customers
-- =====================================================

USE customer_churn;


-- =====================================================
-- 1. DATA OVERVIEW
-- =====================================================

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT *
FROM customers
LIMIT 5;


-- =====================================================
-- 2. OVERALL CHURN
-- =====================================================

SELECT
    Churn,
    COUNT(*) AS customers,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS churn_percentage
FROM customers
GROUP BY Churn;


-- =====================================================
-- 3. CHURN BY CONTRACT
-- =====================================================

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY Contract
ORDER BY churn_rate DESC;


-- =====================================================
-- 4. CHURN BY INTERNET SERVICE
-- =====================================================

SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY InternetService
ORDER BY churn_rate DESC;


-- =====================================================
-- 5. CHURN BY PAYMENT METHOD
-- =====================================================

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;


-- =====================================================
-- 6. CHURN BY TENURE
-- =====================================================

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 months'
        WHEN tenure <= 24 THEN '13-24 months'
        WHEN tenure <= 48 THEN '25-48 months'
        WHEN tenure <= 60 THEN '49-60 months'
        ELSE '60+ months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0-12 months' THEN 1
        WHEN '13-24 months' THEN 2
        WHEN '25-48 months' THEN 3
        WHEN '49-60 months' THEN 4
        WHEN '60+ months' THEN 5
    END;


-- =====================================================
-- 7. CHURN BY MONTHLY CHARGES
-- =====================================================

SELECT
    CASE
        WHEN MonthlyCharges < 40 THEN 'Below $40'
        WHEN MonthlyCharges < 70 THEN '$40-$69'
        WHEN MonthlyCharges < 100 THEN '$70-$99'
        ELSE '$100+'
    END AS charge_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY charge_group
ORDER BY
    CASE charge_group
        WHEN 'Below $40' THEN 1
        WHEN '$40-$69' THEN 2
        WHEN '$70-$99' THEN 3
        WHEN '$100+' THEN 4
    END;


-- =====================================================
-- 8. CHURN BY SENIOR CITIZEN
-- =====================================================

SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY SeniorCitizen;


-- =====================================================
-- 9. CHURN BY PARTNER
-- =====================================================

SELECT
    Partner,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY Partner;


-- =====================================================
-- 10. CHURN BY DEPENDENTS
-- =====================================================

SELECT
    Dependents,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY Dependents;


-- =====================================================
-- 11. CHURN BY ONLINE SECURITY
-- =====================================================

SELECT
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY OnlineSecurity
ORDER BY churn_rate DESC;


-- =====================================================
-- 12. CHURN BY TECH SUPPORT
-- =====================================================

SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY TechSupport
ORDER BY churn_rate DESC;


-- =====================================================
-- 13. CHURN BY ONLINE BACKUP
-- =====================================================

SELECT
    OnlineBackup,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY OnlineBackup
ORDER BY churn_rate DESC;


-- =====================================================
-- 14. CHURN BY DEVICE PROTECTION
-- =====================================================

SELECT
    DeviceProtection,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY DeviceProtection
ORDER BY churn_rate DESC;


-- =====================================================
-- 15. HIGH-RISK CUSTOMER SEGMENT
-- Contract + Tenure + Payment Method
-- =====================================================

SELECT
    Contract,
    CASE
        WHEN tenure <= 12 THEN '0-12 months'
        WHEN tenure <= 24 THEN '13-24 months'
        WHEN tenure <= 48 THEN '25-48 months'
        WHEN tenure <= 60 THEN '49-60 months'
        ELSE '60+ months'
    END AS tenure_group,
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY Contract, tenure_group, PaymentMethod
HAVING COUNT(*) >= 50
ORDER BY churn_rate DESC;