class Game < ApplicationRecord
  has_many :tournaments
end

# rails g migration AddLandlordToProperties landlord_id:integer
# rails g migration AddGameToTournaments game_id:integer
