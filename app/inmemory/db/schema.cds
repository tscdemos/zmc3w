namespace guitarstore;

entity Product {
  key ID: UUID;
  productInformation: String(200);
  targetAudiencePitch: String(200);
  discount: Decimal(5,2);
  warehouseStock: Association to Warehouse;
}

entity Warehouse {
  key ID: UUID;
  stock: Integer;
  products: Association to many Product on products.warehouseStock = $self;
}

