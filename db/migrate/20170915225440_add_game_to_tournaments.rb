class AddGameToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_reference :tournaments, :game, foreign_key: true
  end
end
