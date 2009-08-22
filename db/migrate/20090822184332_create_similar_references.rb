class CreateSimilarReferences < ActiveRecord::Migration
  def self.up
    create_table :similar_references do |t|
      t.integer :link_id
      t.integer :similar_link_id

      t.timestamps
    end

    add_column :links, :similar_reference_id, :integer
  end

  def self.down
    drop_table :similar_references
    remove_column :links, :similar_reference_id
  end
end
