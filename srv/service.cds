using myapp from '../db/schema';

service ProductService {
  entity Products as projection on myapp.Product;

  @readonly
  entity Orders as projection on myapp.Order;

  @readonly
  entity OrderItems as projection on myapp.OrderItem;
}

service OrderService {
  entity Orders as projection on myapp.Order;

  @insertonly
  entity OrderItems as projection on myapp.OrderItem;
}
