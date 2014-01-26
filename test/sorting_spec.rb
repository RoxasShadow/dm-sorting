#! /usr/bin/env ruby
#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++
require './spec_helper'

describe DataMapper::Sorting do
  supported_by :all do
    before do
      class Pokemon
        include DataMapper::Resource

        property :id,     Serial
        property :name,   String
        property :type,   String

        sort_by :name.asc, :type.desc

        auto_migrate!
      end
    end

    it 'sorts items by the given field in the expected order' do
      pokemanz = [
        { name: 'Bulbasaur', type: 'Grass'  },
        { name: 'Bulbasaur', type: 'Poison' },
        { name: 'Torchic',   type: 'Fire'   },
        { name: 'Mudkip',    type: 'Water'  },
      ]

      pokemanz.shuffle.each do |pokemon|
        Pokemon.create pokemon
      end

      pokemanz = pokemanz.sort do |p1, p2|
        [ p1[:name], p2[:type] ] <=> [ p2[:name], p1[:type] ]
      end

      Pokemon.all.each do |pokemon|
        pokemon.name.should eql(pokemanz.shift[:name])
      end
    end
  end
end