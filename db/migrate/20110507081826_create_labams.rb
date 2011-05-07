class CreateLabams < ActiveRecord::Migration
  def self.up
    create_table :labams do |t|
      t.text :desc
      t.integer :amount
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :labams
  end
end
