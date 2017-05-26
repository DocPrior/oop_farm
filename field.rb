require 'pry'

class Fields
  @@fields = []

  def initialize(type, hectacres)
    @type = type
    @hectacres = hectacres
  end

  def self.add_feild(type, hectacres)
    new_field = Fields.new(type, hectacres)
    @@fields << new_field
  end

  def self.relax
    @@fields.each do |field|
      puts "#{field.type} field, #{field.hectacres} hectacres"
    end
  end

  def self.all
    @@fields
  end
end


field1 = Fields.add_feild("wheat", 50)
puts Fields.all

puts Fields.relax
