# dm-sorting

DataMapper plugin providing your models a default sorting method.

# Example
  ```ruby
    require 'dm-core'
    require 'dm-sorting'

    class Person
      include DataMapper::Resource

      property :id,     Serial
      property :name,   String
      property :age,    Integer

      sort_by :name.asc, :age.desc # default_order and order_by are available too
    end
  ```
