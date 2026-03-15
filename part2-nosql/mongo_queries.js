// OP1: insertMany() — insert all documents

db.products.insertMany([
{
  product_name: "Samsung Galaxy S23",
  category: "Electronics",
  price: 75000,
  specifications: {
    warranty: "1 year",
    voltage: "220V"
  }
},
{
  product_name: "Men Cotton T-Shirt",
  category: "Clothing",
  price: 899,
  sizes: ["S","M","L","XL"],
  material: "Cotton"
},
{
  product_name: "Organic Milk",
  category: "Groceries",
  price: 65,
  expiry_date: new Date("2024-12-30"),
  nutrition: {
    protein: "3.4g",
    fat: "4%"
  }
}
]);


// OP2: find Electronics with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find groceries expiring before 2025

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() add discount_percent

db.products.updateOne(
  { product_name: "Samsung Galaxy S23" },
  { $set: { discount_percent: 10 } }
);


// OP5: create index on category

db.products.createIndex({ category: 1 });