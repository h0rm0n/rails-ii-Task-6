class Createcomments < ActiveRecord::Migration
   def change
      create_table :comments do |t|
         t.integer :post_id
         t.string :nick
         t.text :description
        
         t.timestamps
      end
   end
end
