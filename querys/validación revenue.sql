SELECT TOP 10
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS Revenue
FROM Sales.OrderLines;