class Tournament < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => :users_tournaments
  belongs_to :game
end
