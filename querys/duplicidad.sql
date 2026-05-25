SELECT 
    COUNT(*) AS TotalRows
FROM Sales.OrderLines ol

INNER JOIN Sales.Orders o
    ON ol.OrderID = o.OrderID

INNER JOIN Sales.Customers c
    ON o.CustomerID = c.CustomerID;