#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module DataMapper
  module Sorting
    def default_order(*fields)
      default_scope(:default).update order: fields
    end

    alias_method :order_by, :default_order
    alias_method :sort_by,  :default_order
  end
end