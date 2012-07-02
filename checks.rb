require 'sequel'

db = Sequel.connect 'postgres:///sails'

data = {
  product_no:1,
  name:'tea',
  price:1
}
puts db[:products].insert(data)

bad_data = data.update(price: -1)
puts db[:products].insert(bad_data)


__END__


/Users/choi/.rbenv/versions/1.9.3-p194/lib/ruby/gems/1.9.1/gems/sequel-3.35.0/lib/sequel/adapters/postgres.rb:202:in `async_exec': PG::Error: ERROR:  new row for relation "products" violates check constraint "products_price_check" (Sequel::DatabaseError)



named constraint

/Users/choi/.rbenv/versions/1.9.3-p194/lib/ruby/gems/1.9.1/gems/sequel-3.35.0/lib/sequel/adapters/postgres.rb:202:in `async_exec': PG::Error: ERROR:  new row for relation "products" violates check constraint "positive_price" (Sequel::DatabaseError)
