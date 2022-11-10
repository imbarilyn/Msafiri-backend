class Destination < ActiveRecord::Base
    has_many :reviews
    has_many :user_destinations
    has_many :users, through: :user_destinations
    
end