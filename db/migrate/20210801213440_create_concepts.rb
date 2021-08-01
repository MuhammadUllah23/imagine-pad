class CreateConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :concepts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :genre_id
      t.integer :media_type_id

      t.timestamps
    end
  end
end
