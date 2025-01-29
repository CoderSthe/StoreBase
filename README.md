# StoreBase

StoreBase is a database project that sets up a `store` database with multiple tables, including `customers`, `employees`, `orders`, `payments`, and `products`. The database is pre-populated with sample data and includes SQL queries for retrieving and manipulating data.

## Features
- **Predefined Database Schema**: Structured tables with relationships.
- **Sample Data**: Inserted records for testing and demonstration.
- **SQL Queries**: Perform CRUD operations and retrieve insights.
- **Foreign Key Constraints**: Maintain referential integrity.

## Database Schema Overview
The `store` database consists of the following tables:
- **customers**: Stores customer details.
- **employees**: Stores employee information.
- **orders**: Tracks customer orders and fulfillment.
- **payments**: Logs payments made by customers.
- **products**: Contains details of available products.

For a full breakdown of the database schema and relationships, refer to the [Database Schema Documentation](docs/Database_Schema.md).

## Exchange Rate Assumption
- Assumes an exchange rate of **R12 to 1 USD** for price conversions.

## Getting Started
### Prerequisites
- PostgreSQL / MySQL / SQLite (depending on the database used)
- SQL client (e.g., pgAdmin, MySQL Workbench, DBeaver)

### Installation & Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/StoreBase.git
   cd StoreBase
   ```
2. Import the database schema:
   ```sh
   psql -U your_user -d your_database -f schema.sql  # PostgreSQL
   mysql -u your_user -p your_database < schema.sql  # MySQL
   ```
3. Load sample data:
   ```sh
   psql -U your_user -d your_database -f seed_data.sql  # PostgreSQL
   mysql -u your_user -p your_database < seed_data.sql  # MySQL
   ```

## License
This project is licensed under the [MIT License](https://opensource.org/license/MIT).

## Author
Created by **Sithembiso Mdhluli**.
