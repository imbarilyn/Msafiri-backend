class User < ActiveRecord::Base
    has_many :reviews
    has_many :user_destinations
    has_many :destinations, through: :user_destinations
end