class AddUrlNameToLinks < ActiveRecord::Migration
  def self.up
    add_column :links, :url_name, :string
  end

  def self.down
    remove_column :links, :url_name
  end
end
