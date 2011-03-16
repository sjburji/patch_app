class CreateDbLists < ActiveRecord::Migration
  def self.up
    create_table :db_lists do |t|
      t.string :db_name

      t.timestamps
    end
  end

  def self.down
    drop_table :db_lists
  end
end
