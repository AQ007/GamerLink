class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :begin_date
      t.datetime :end_date
      t.string :game_type

      t.timestamps
    end
    create_table :users_tournaments, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tournament, index: true
    end
  end
end
