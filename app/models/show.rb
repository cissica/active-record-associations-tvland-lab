require "pry"
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.collect do |actor_obj_arr|
             first = actor_obj_arr.first_name 
             last = actor_obj_arr.last_name
             "#{first} #{last}"
        end 
    end 
end