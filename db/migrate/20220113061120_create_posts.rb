class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :url
      t.string :title
      t.text :body

      t.references :user

      t.timestamps
    end
  end
end
