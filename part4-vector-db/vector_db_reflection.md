## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching long legal contracts using natural language questions. Keyword search relies on exact word matching, which means it can miss relevant information if the wording in the contract differs from the user’s query. Legal documents often contain complex language and multiple ways of expressing the same concept, so keyword search can return incomplete or irrelevant results.

Vector databases solve this problem by using embeddings to represent text as numerical vectors that capture semantic meaning. When a lawyer asks a question such as “What are the termination clauses?”, the system converts the query into a vector embedding. The contract text is also converted into embeddings and stored in a vector database. Instead of matching exact words, the system compares vector similarity to find sections of the contract that are semantically related to the query.

This approach allows the system to identify relevant clauses even if the wording is different from the search query. For example, a clause describing “conditions under which the agreement may be ended” could still be retrieved for a query about termination clauses.

Vector databases enable fast similarity searches across thousands of document chunks, making them ideal for large contracts that can span hundreds of pages. They are widely used in modern AI applications such as semantic search, recommendation systems, and retrieval-augmented generation (RAG). In this legal search system, the vector database would store embeddings of contract sections and quickly return the most relevant passages in response to a lawyer’s question.
