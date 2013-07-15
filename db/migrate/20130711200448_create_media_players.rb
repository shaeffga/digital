class CreateMediaPlayers < ActiveRecord::Migration
  def change
    create_table :media_players do |t|
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
