-- Baseline query used for performance analysis
-- Reconstructed from the original SQL Server Management Studio screenshot

SET STATISTICS IO ON;
SET STATISTICS TIME ON;

SELECT
    oi.OrderNumber,
    oi.ProductCode,
    p.Name AS ProductName,
    cc.City,
    oi.Quantity,
    oi.UnitPrice
FROM dbo.OrderItem oi
JOIN dbo.Product p
    ON oi.ProductCode = p.ProductCode
JOIN dbo.CustomerCity cc
    ON oi.CustomerCityID = cc.Id;
