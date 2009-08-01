class CreateEmbeds < ActiveRecord::Migration
  def self.up
    create_table :embeds do |t|
      t.string :type
      t.string :url
      t.integer :width
      t.integer :height
      t.integer :link_id

      t.timestamps
    end
  end

  def self.down
    drop_table :embeds
  end
end
