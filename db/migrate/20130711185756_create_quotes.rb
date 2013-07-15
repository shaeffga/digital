class CreateQuotes < ActiveRecord::Migration

  def change
    create_table :quotes do |t|
      t.references :user

      t.timestamps
    end
    add_index :quotes, :user_id
  end
end
