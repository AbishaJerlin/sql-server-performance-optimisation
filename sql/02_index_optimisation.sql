-- Indexes used during the performance optimisation exercise
-- Reconstructed from the original SQL Server Management Studio screenshot

CREATE NONCLUSTERED INDEX IX_OrderItem_CustomerCityID
ON dbo.OrderItem (CustomerCityID)
INCLUDE (OrderNumber, ProductCode, Quantity, UnitPrice);
GO

CREATE NONCLUSTERED INDEX IX_OrderItem_ProductCode
ON dbo.OrderItem (ProductCode)
INCLUDE (OrderNumber, CustomerCityID, Quantity, UnitPrice);
GO

CREATE NONCLUSTERED INDEX IX_Product_ProductCode
ON dbo.Product (ProductCode)
INCLUDE (Name);
GO
