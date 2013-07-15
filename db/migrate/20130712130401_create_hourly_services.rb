class CreateHourlyServices < ActiveRecord::Migration
  def change
    create_table :hourly_services do |t|
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
