class Communities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :null
      t.text :rules
      t.integer :total_numbers
      t.timestamps
    end
  end
end
