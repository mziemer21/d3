class FixPrivlages < ActiveRecord::Migration
  def change
    add_column :privileges, :user_id, :integer, :null => false, :unique => true
  end
end
