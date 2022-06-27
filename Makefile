do-everything:
	dbt compile --target bigquery
	dbt seed --target bigquery --full-refresh
	dbt run --target bigquery --full-refresh
	dbt test --target bigquery
