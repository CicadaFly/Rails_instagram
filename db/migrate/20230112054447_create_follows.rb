class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.integer :followed_id
      t.integer :follower_id
      t.boolean :accepted, default: false

      t.timestamps
    end
    add_index :follows, :followed_id
    add_index :follows, :follower_id
    add_index :follows, [:followed_id, :follower_id], :unique => true
  end
end
