class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id 
      t.string :item
      t.boolean :complete
      t.boolean :deleted
      t.timestamps null: false
    end
    
    add_index(:items, :user_id)
  end
end
