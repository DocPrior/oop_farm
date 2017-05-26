require 'pry'

class Fields
  @@fields = []
  @@the_harvest = 0

  attr_reader :type, :hectacres
  def initialize(type, hectacres)
    @type = type
    @hectacres = hectacres
  end

  def self.add_field(type, hectacres)
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

  def self.harvest
    @@fields.each do |field|
      @@the_harvest += field.hectacres
    end
    @@the_harvest
  end

  def self.status
    Fields.relax
    puts "#{@@the_harvest} units of food harvested"
  end
end


field1 = Fields.add_field("wheat", 50)
field2 = Fields.add_field("wheat", 50)
field3 = Fields.add_field("wheat", 50)
field4 = Fields.add_field("wheat", 50)

puts "====================="

puts Fields.relax

puts "========================="

Fields.harvest
Fields.relax

puts "======================="

Fields.status
