# StoreBase

This project sets up a database called `store` with several tables (customers, employees, orders, payments, products) and populates them with sample data. It includes SQL queries to retrieve and manipulate data from these tables.

## Database Schema

### Tables Created:

#### 1. customers

This table stores information about the customers of the store.
- **id**(Primary key): Unique identifier for each customer.
- **first_name**: First name of the customer.
- **last_name**: Last name of the customer.
- **gender**: Gender of the customer.
- **address**: Address of the customer.
- **phone**: Phone number of the customer.
- **email**: Email address of the customer.
- **city**: City where the customer lives.
- **country**: Country where the customer lives.

#### 2. employees

This table stores information about the employees working at the store.
- **id**(Primary key): Unique identifier for each employee.
- **first_name**: First name of the employee.
- **last_name**: Last name of the employee.
- **email**: Email address of the employee.
- **job_title**: Job title of the employee.

#### 3. orders

This table stores information about the orders placed by customers.
- **id**(Primary key): Unique identifier for each order.
- **product_id**(Foreign key referencing `products`): Identifier of the product ordered.
- **payment_id**(Foreign Key referencing `payments`): Identifier of the payment made for the order.
- **fulfilled_by_employee_id** (Foreign Key referencing `employees`): Identifier of the employee who fulfilled the order.
- **date_required**: Date by which the order is required.
- **date_shipped**: Date when the order was shipped (can be null).
- **status**: Status of the order (e.g., 'Shipped', 'Pending').

#### 4. payments

This table stores information about the payments made by customers.
- **id**(Primary Key): Unique identifier for each payment.
- **customer_id** (Foreign Key referencing customers): Identifier of the customer who made the payment.
- **payment_date**: Date when the payment was made.
- **amount**: Amount of the payment.

#### 5. products

This table stores information about the products available in the store.
- **id**(Primary Key): Unique identifier for each product.
- **product_name**: Name of the product.
- **description**: Description of the product.
- **buy_price**: Purchase price of the product.

### Relationships between Tables:

- **orders.product_id** references **products.id**: Each order is for a specific product.
- **orders.payment_id** references **payments.id**: Each order is associated with a payment.
- **orders.fulfilled_by_employee_id** references **employees.id**: Each order is fulfilled by a specific employee.
- **payments.customer_id** references **customers.id**: Each payment is made by a specific customer.



### Sample Data Inserted
- Sample customers, employees, orders, payments, and products data have been inserted into their respective tables to demonstrate querying and manipulation.


## Exchange Rate Assumption

- Assumes an exchange rate of R12 to 1 USD for converting prices.

## Author/Credits

This project was created by Sithembiso Mdhluli.


## License

This project is licensed under the [MIT License](https://opensource.org/license/MIT).