require 'yaml' 
require 'pp'


# test sequel reflection on a view
require 'sequel'

db = Sequel.connect 'postgres:///sails'
pp db[:products].columns
pp db.schema(:products) # can be view
pp db.tables

puts "col dscription"
puts db["select col_description('products'::regclass::oid, 2)"].first.to_hash


__END__

[:id, :login, :email, :name, :created_at]
[[:id,
  {:db_type=>"integer",
   :default=>nil,
   :allow_null=>true,
   :primary_key=>false,
   :type=>:integer,
   :ruby_default=>nil}],
 [:login,
  {:db_type=>"character varying(255)",
   :default=>nil,
   :allow_null=>true,
   :primary_key=>false,
   :type=>:string,
   :ruby_default=>nil}],
 [:email,
  {:db_type=>"character varying(255)",
   :default=>nil,
   :allow_null=>true,
   :primary_key=>false,
   :type=>:string,
   :ruby_default=>nil}],
 [:name,
  {:db_type=>"character varying(255)",
   :default=>nil,
   :allow_null=>true,
   :primary_key=>false,
   :type=>:string,
   :ruby_default=>nil}],
 [:created_at,
  {:db_type=>"timestamp without time zone",
   :default=>nil,
   :allow_null=>true,
   :primary_key=>false,
   :type=>:datetime,
   :ruby_default=>nil}]]
