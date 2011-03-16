class CreateDataPatches < ActiveRecord::Migration
  def self.up
    create_table :data_patches do |t|
      t.string :db
      t.string :patch
      t.string :otrs_id
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :data_patches
  end
end
