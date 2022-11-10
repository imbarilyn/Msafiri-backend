class User < ActiveRecord::Base
    has_many :reviews
    has_many :desitinations, through: :reviews
end