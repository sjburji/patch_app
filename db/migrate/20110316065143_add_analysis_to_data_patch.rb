class AddAnalysisToDataPatch < ActiveRecord::Migration
  def self.up
    add_column :data_patches, :analysis, :string
  end

  def self.down
    remove_column :data_patches, :analysis
  end
end
