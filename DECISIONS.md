Setting Up dbt, Git, and Snowflake

1. Install dbt

Install Python: Make sure Python is added to your system's PATH before downloading and installing it.

Install dbt: To enable dbt to connect to Snowflake, install `dbt-snowflake` using `pip`, Python's package manager.



2. Install Git

Windows: Visit the official website to download and install Git.



3. Create a Snowflake Account

Visit their website to sign up for a free Snowflake trial, then finish the setup steps to obtain your Snowflake environment.



4. Connect dbt to Snowflake

Create a dbt_banxware_assignment folder in the local directory and enter your Snowflake account details (account name, username, password, role, database, and schema) in a configuration file ({profiles.yml}) in the dbt directory.

Verify that Snowflake and DBT are connected properly by testing the connection.

This sets up your environment such that you can use Git for version control, dbt for data transformation, and Snowflake as your data warehouse.





Loading and Transforming Data with dbt


1. Ingest Data into Snowflake

Using the `seed` function in dbt or the Snowflake user interface, load your raw sales and customer data (such as `raw_sales_data.csv and raw_customer_data.csv} and `customers.csv}) into Snowflake.

The data will be loaded into tables, such as `raw_sales_data` and `raw_customer_data`.




2. Create a dbt Model for Data Transformation

In the `models` folder of your dbt project, create a new model SQL file (e.g., `transformed_sales_data.sql`).

Write SQL transformations to clean and structure the raw data. For example, you might extract year, month, and day from a date field using extract function and also calculate total sales for each order by multiplying price with quantity.




3. Run the dbt Model

Run the dbt project to apply the transformations and create the transformed table in Snowflake.

dbt will manage table creation and handle dependencies automatically.




4. Verify Data in Snowflake

Log in to Snowflake to verify that the transformed data is correctly structured and reflects the expected changes.

This process ensures your raw data is ingested, transformed, and made ready for analysis using dbt's pipeline.

