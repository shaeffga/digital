class CreateHelpDesks < ActiveRecord::Migration
  def change
    create_table :help_desks do |t|
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
