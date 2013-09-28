class AddSelectiveFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string  :name, :null => :false
      t.text    :description, :null => :false
      t.boolean :active, :default => false, :null => :false
      t.timestamps
    end
    
  end

  def self.down
    drop_table :features
  end
end
