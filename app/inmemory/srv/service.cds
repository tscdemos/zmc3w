using { guitarstore } from '../db/schema.cds';

service guitarstoreSrv {
  entity Product as projection on guitarstore.Product;
  entity Warehouse as projection on guitarstore.Warehouse;
}