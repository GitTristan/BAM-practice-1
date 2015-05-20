class Update < ActiveRecord::Migration
  def change
    remove_column :show_listings, :date, :datetime
    add_column :show_listings, :date, :string

  end
end
