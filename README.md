Project README

Setup Instructions

1. Clone the Repository
   Clone this repository to your local machine using Git.

2. Set Up Your dbt Project
 Go to the project directory by navigating.
    To link DBT to your Snowflake instance, set up your `profiles.yml` file. You should find this file in the directory {~/.dbt/}.


3. Load Data into Snowflake
    To load CSV files into Snowflake, use the `seed` command in dbt. Make sure the `sales.csv` and `customers.csv` files are in your `data} folder.


4. Configure dbt Models
If necessary, check and make changes to the SQL files located in the models directory. The data transformations for project are specified in these files.




Prerequisites

Snowflake Account
  A Snowflake account is required. You should have a database, schema, and warehouse set up in Snowflake.

dbt Installation
  Ensure dbt is installed on your system. You can install it via Python's package manager, `pip`.

Credentials
  You need Snowflake credentials, including your account details, username, password, role, warehouse, database, and schema information. Ensure these are correctly configured in your `profiles.yml` file.

Running the Queries

1. Run dbt Models
    To create and implement transformations on your data, run dbt commands. This will generate the required Snowflake views or tables.


2. Analyze Data
    After the models are constructed, access Snowflake and use the modified data to conduct queries for analysis and insight-generating.




