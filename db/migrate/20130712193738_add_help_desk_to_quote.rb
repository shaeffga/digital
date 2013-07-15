class AddHelpDeskToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :help_desk_id, :integer
  end
end
