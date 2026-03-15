## ETL Decisions

### Decision 1 — Standardizing Date Formats

Problem: The raw dataset contained inconsistent date formats such as DD-MM-YYYY and YYYY/MM/DD. This inconsistency makes it difficult to perform time-based analysis.

Resolution: During the transformation stage, all date values were converted into a standardized ISO format (YYYY-MM-DD). This ensures consistent storage and simplifies time-based aggregation in the data warehouse.

### Decision 2 — Handling NULL Values

Problem: Some records in the raw dataset contained missing values for product categories and store information.

Resolution: Missing categorical values were replaced with a standardized placeholder such as "Unknown". This prevents issues during aggregation queries and ensures that all rows can be loaded into the warehouse without violating NOT NULL constraints.

### Decision 3 — Normalizing Category Names

Problem: Product categories appeared with inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".

Resolution: During transformation, all category values were converted to a consistent format using title case (e.g., "Electronics"). This ensures that analytical queries group categories correctly and prevents fragmented reporting results