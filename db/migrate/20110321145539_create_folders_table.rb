class CreateFoldersTable < ActiveRecord::Migration
  def self.up
    create_table :folders do |t|
      t.string :name
      t.references :parent
    end
  end

  def self.down
    drop_table :folders
  end
end
