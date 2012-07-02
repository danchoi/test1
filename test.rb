require 'yaml' 
require 'pp'


# test sequel reflection on a view
require 'sequel'

db = Sequel.connect 'postgres:///dogood'
pp db[:users_test_view].columns
pp db.schema(:users_test_view)


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
