class User < ApplicationRecord
  has_and_belongs_to_many :tournaments, :join_table => :users_tournaments

  validates(:username,
    presence: true,
    length: {minimum:4, maximum:15})
  validates(:email,
    presence: true,
    length: {minimum:4, maximum:50})
  validates(:password,
    presence: true,
    length: {minimum:4, maximum:50})



end
