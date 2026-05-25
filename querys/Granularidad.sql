SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT OrderLineID) AS UniqueOrderLines
FROM Sales.OrderLines;