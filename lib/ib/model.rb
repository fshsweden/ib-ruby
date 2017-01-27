puts "require 'ib/base_properties'"
require 'ib/base_properties'
puts "require 'ib/base'"
require 'ib/base'
puts "require 'ib/base' DONE"

module IB
  # IB Models can be either lightweight (tableless) or database-backed.
  # require 'ib/db' - to make all IB models database-backed
  Model =  IB.db_backed? ? ActiveRecord::Base : IB::Base
end
