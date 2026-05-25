USE WideWorldImporters;

USE WideWorldImporters;

SELECT

    -- Fecha
    o.OrderDate,
     o.OrderID,

    -- Cliente
    c.CustomerName,
     c.CustomerID,
    c.PaymentDays,

    -- Geografía
    ct.CityName,

    -- Producto
    si.StockItemName,
    si.StockItemID,
    si.Brand,

    -- Proveedor
    s.SupplierName,
     s.SupplierID,
    s.SupplierCategoryID,

    -- Vendedor
    p.FullName AS Vendor,
     p.PersonID AS VendorID,

    -- Métricas de ventas
    ol.Quantity,
    ol.PickedQuantity,
    ol.UnitPrice AS SaleUnitPrice,
    ol.TaxRate,

    -- Métrica derivada
    ol.Quantity * ol.UnitPrice AS Revenue

FROM Sales.OrderLines ol

INNER JOIN Sales.Orders o
    ON ol.OrderID = o.OrderID

INNER JOIN Sales.Customers c
    ON o.CustomerID = c.CustomerID

INNER JOIN Warehouse.StockItems si
    ON ol.StockItemID = si.StockItemID

INNER JOIN Application.People p
    ON o.SalespersonPersonID = p.PersonID

INNER JOIN Application.Cities ct
    ON c.DeliveryCityID = ct.CityID

INNER JOIN Purchasing.Suppliers s
    ON si.SupplierID = s.SupplierID

WHERE p.IsSalesperson = 1;