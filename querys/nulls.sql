SELECT
    SUM(CASE WHEN CustomerName IS NULL THEN 1 ELSE 0 END) AS NullCustomers,
    SUM(CASE WHEN StockItemName IS NULL THEN 1 ELSE 0 END) AS NullProducts,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS NullQuantity
FROM
(
SELECT
-- Fechas
o.OrderDate,
o.OrderID,

-- Cliente
c.CustomerName,
c.CustomerID,
c.PaymentDays,

-- Ciudad
ct.CityName,

-- Producto
si.StockItemName,
si.StockItemID,
si.Brand,

-- Proveedor
s.SupplierName,
s.SupplierID,
s.SupplierCategoryID,
sc.SupplierCategoryName,


-- Métricas venta
ol.Quantity,
ol.UnitPrice AS SaleUnitPrice,
si.UnitPrice AS CurrentCatalogPrice,
ol.TaxRate,

-- Vendedor
p.FullName AS Vendor,
p.PersonID AS VendorID,
p.IsEmployee,
p.IsSalesperson,

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

INNER JOIN Purchasing.SupplierCategories sc
    ON s.SupplierCategoryID  = sc.SupplierCategoryID
) t;