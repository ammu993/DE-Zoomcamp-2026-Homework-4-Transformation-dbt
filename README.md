
# DE-Zoomcamp-2026-Homework-4-Transformation-dbt
Solution to the Week 4 module homework

### Question 1. dbt Lineage and Execution
Given a dbt project with the following structure:

If you run dbt run --select int_trips_unioned, what models will be built?
- int_trips_unioned only

### Question 2. dbt Tests
You've configured a generic test like this in your schema.yml:

```yml 
columns:
  - name: payment_type
    data_tests:
      - accepted_values:
          arguments:
            values: [1, 2, 3, 4, 5]
            quote: false
```
Your model fct_trips has been running successfully for months. A new value 6 now appears in the source data.

What happens when you run dbt test --select fct_trips?
- dbt will fail the test, returning a non-zero exit code

### Question 3. Counting Records in fct_monthly_zone_revenue
After running your dbt project, query the fct_monthly_zone_revenue model.
What is the count of records in the fct_monthly_zone_revenue model?
- 12,184

### Question 4. Best Performing Zone for Green Taxis (2020)
Using the fct_monthly_zone_revenue table, find the pickup zone with the highest total revenue (revenue_monthly_total_amount) for Green taxi trips in 2020.
Which zone had the highest revenue?
- East Harlem North

### Question 5. Green Taxi Trip Counts (October 2019
Using the fct_monthly_zone_revenue table, what is the total number of trips (total_monthly_trips) for Green taxis in October 2019?
- 384,624

### Question 6. Build a Staging Model for FHV Data
Create a staging model for the For-Hire Vehicle (FHV) trip data for 2019.
What is the count of records in stg_fhv_tripdata?
- 43,244,693
