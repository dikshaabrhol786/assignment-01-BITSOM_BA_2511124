## Storage Systems

The proposed architecture uses a combination of transactional databases, analytical storage systems, and specialized AI databases to support the hospital network’s requirements.

Patient records and operational data are stored in a relational OLTP database such as PostgreSQL. This system handles day-to-day hospital operations including patient registration, treatment records, prescriptions, and billing. Relational databases are appropriate here because they provide strong ACID guarantees, ensuring data consistency and reliability for critical healthcare data.

Real-time vitals data from ICU monitoring devices is ingested through a streaming pipeline such as Apache Kafka. This allows continuous data ingestion and processing from medical devices without overwhelming the core transactional database.

All incoming raw data is stored in a scalable Data Lake such as Amazon S3. The data lake stores structured, semi-structured, and unstructured data including monitoring logs, medical notes, and device telemetry. This provides a centralized storage layer for large-scale data processing.

For analytical reporting, cleaned and transformed data is loaded into a Data Warehouse such as Snowflake or BigQuery. The data warehouse supports OLAP queries used by hospital management to generate monthly reports including bed occupancy, department costs, and operational performance metrics.

To support natural language patient history search, patient records are converted into embeddings and stored in a Vector Database such as Pinecone or FAISS. This enables semantic search where doctors can ask questions in natural language and retrieve relevant patient history information.

Machine learning models are trained on historical treatment data stored in the warehouse and data lake to predict patient readmission risk.

## OLTP vs OLAP Boundary

In this architecture, the OLTP system is the hospital’s relational database that manages operational patient data and transactions. It handles real-time updates such as admissions, treatments, and prescriptions.

The OLAP system begins at the data warehouse layer. Data from the transactional system is periodically extracted, transformed, and loaded into the warehouse. This separation ensures that analytical workloads such as reporting and machine learning do not affect operational system performance.

## Trade-offs

One key trade-off in this architecture is the increased system complexity introduced by using multiple storage systems. While each component is optimized for specific tasks, maintaining and integrating these systems requires additional infrastructure management.

To mitigate this complexity, the architecture can use managed cloud services such as AWS Managed Kafka, Snowflake, and managed vector databases. These services reduce operational overhead while maintaining scalability and reliability.
