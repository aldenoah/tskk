class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :meta_title
      t.string :meta_description
      t.string :permalink
      t.string :slug
      t.integer :view_count

      t.timestamps null: false
    end
    add_index :posts, :permalink, unique: true
    add_index :posts, :slug, unique: true
  end
end
