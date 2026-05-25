SELECT
    StockItemID,
    COUNT(DISTINCT SupplierID) AS Suppliers
FROM Warehouse.StockItems
GROUP BY StockItemID
HAVING COUNT(DISTINCT SupplierID) > 1;