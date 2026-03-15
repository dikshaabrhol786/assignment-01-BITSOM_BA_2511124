## Anomaly Analysis

### Insert Anomaly

In the current flat table structure, we cannot add a new product unless an order exists.
For example, if a new product such as **product_id = P120 (Bluetooth Speaker)** is introduced but has not yet been ordered, there is no way to store it in the table without creating a fake order.

### Update Anomaly

Customer information is repeated across multiple rows.
If the **customer_city of customer_id = C101 changes**, it must be updated in every row where that customer appears. If one row is missed, inconsistent data will occur.

### Delete Anomaly

If the only order containing a specific product is deleted, all information about that product is also removed.
For example, deleting the row containing **product_id = P105** would remove the product name, category, and price information entirely.
