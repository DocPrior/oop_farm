require 'pry'
require_relative 'field'

class Farms
 def options
   while true
     print_options
     user_input = gets.chomp
     call_options(user_input)
   end
 end

 def print_options
   puts "Options:"
   puts "field -> add new field"
   puts "harvest -> harvest all fields"
   puts "status -> display farm info"
   puts "relax -> display field info"
   puts "exit -> exit program"
 end

 def call_options(user_input)
   case user_input
   when "field" then plant_fields
   when "harvest" then harvest_crop
   when "status" then farm_status
   when "relax" then feild status
   when "exit" then exit
   end
 end
end
