# mysql-project--travegotravellers
# SQL Queries and Actions

This repository contains a series of SQL queries and actions related to a hypothetical passenger management system. The provided SQL scripts address various tasks and actions related to passenger information, pricing, and data manipulation.

## Queries and Actions

1. **Count Female Passengers**: `count_female_passengers.sql`
   - Description: This query counts the number of female passengers who have traveled a minimum distance of 600 kilometers.

2. **Passenger Details by Distance and Bus Type**: `passenger_details_by_distance.sql`
   - Description: This query displays the details of passengers who have traveled more than 500 kilometers in a sleeper bus.

3. **Passengers with Names Starting with 'S'**: `passengers_starting_with_S.sql`
   - Description: This query selects passengers whose names start with the character 'S'.

4. **Calculate Passenger Prices**: `calculate_passenger_prices.sql`
   - Description: This query calculates the price charged for each passenger, displaying their name, boarding city, destination city, bus type, and price.

5. **Passenger and Price Information**: `passenger_price_information.sql`
   - Description: These queries aim to find the passenger name(s) and ticket price for those who have traveled 1000 kilometers in a sitting bus. However, they require refinement for accuracy.

6. **Travel Charges for Pallavi**: `travel_charges_for_Pallavi.sql`
   - Description: This query finds the charges for Pallavi to travel from Bangalore to Panaji. It needs improvements in the JOIN condition.

7. **Update Bus Categories**: `update_bus_categories.sql`
   - Description: This action updates the "category" column to "Non-AC" for rows where the "Bus_Type" is "sleeper."

8. **Delete Passenger Entry**: `delete_passenger_entry.sql`
   - Description: This action deletes an entry from the "Passenger" table where the passenger name is "Piyush."

9. **Truncate Passenger Table**: `truncate_passenger_table.sql`
   - Description: The `TRUNCATE` command deletes all data from the "Passenger" table while retaining its structure.

10. **Drop Passenger Table**: `drop_passenger_table.sql`
    - Description: This action drops the "Passenger" table from the database, effectively deleting the entire table and its structure.

## Usage

Feel free to use and modify these SQL queries and actions as needed for your specific database or project requirements.

**Note:** Be cautious when using actions that delete or modify data, especially in a production environment.

For any questions or assistance, please contact [name= abdul yaseen] [ email=abdulyaseen797@gmail.com].
