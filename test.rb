require 'yaml' 
require 'pp'


# test sequel reflection on a view
require 'sequel'
db = Sequel.connect 'postgres:///dogood'
pp db[:users_test_view].columns
pp db.schema(:users_test_view)
