
drop table if exists products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric constraint positive_price CHECK (price > 0)
);

