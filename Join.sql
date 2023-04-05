USE bestbuy;
SHOW TABLES;
SELECT * FROM products;
SELECT * FROM categories;

SELECT products.name AS products, categories.name AS category FROM products JOIN categories ON products.categoryID = categories.categoryID WHERE categories.name = 'Computers';

SELECT p.name, p.price, r.rating FROM products AS p JOIN reviews AS r ON p.ProductID=r.ProductID WHERE r.rating = 5;

SELECT concat(e.firstName, e.lastName) AS full_name, SUM(s.quantity) as total FROM employees AS e 
JOIN sales AS s ON e.employeeID=s.employeeID GROUP BY e.EmployeeID ORDER BY total DESC LIMIT 10;

SELECT departments.name AS department, categories.name AS category FROM departments JOIN categories ON departments.departmentID = categories.departmentID 
WHERE categories.name = 'Appliances' OR categories.name = 'Games';

SELECT products.name AS product_name, SUM(sales.quantity) AS units_sold, SUM(products.price * sales.quantity) AS price_sold FROM products 
JOIN sales ON products.productID = sales.productID GROUP BY products.name HAVING products.name LIKE '%Hotel Cal%';

SELECT p.Name, r.Reviewer, r.Comment FROM products as p JOIN reviews AS r ON p.ProductID = r.ProductID WHERE p.Name = 'Visio TV' AND r.Rating < 2;

SELECT e.EmployeeID, e.FirstName, e.LastName, p.Name, s.Quantity FROM employees AS e 
JOIN sales AS s ON e.EmployeeID = s.EmployeeID 
JOIN products AS p ON s.ProductID = p.ProductID 
ORDER BY e.EmployeeID
