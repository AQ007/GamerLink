class User < ApplicationRecord
  has_and_belongs_to_many :tournaments, :join_table => :users_tournaments
end
