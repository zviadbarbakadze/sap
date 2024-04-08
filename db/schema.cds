namespace myapp;

entity Product {
  key ID    : Integer;
  name      : String;
  description : String;
  price     : Decimal(10,2);
  stock_quantity : Integer;
}

entity Order {
  key ID    : Integer;
  customer_id : String;
  date      : DateTime;
  total_price : Decimal(10,2);
}

entity OrderItem {
  key ID    : Integer;
  order     : Association to Order;
  product   : Association to Product;
  quantity  : Integer;
  price_per_unit : Decimal(10,2);
}
