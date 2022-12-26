class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.float :longitude
      t.float :lattitude
      t.references :user, null: false, foreign_key: true
      t.boolean :allow_to_comment
      t.boolean :show_likes

      t.timestamps
    end
  end
end
