class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :image
      t.date :published_at
      t.string :google_books_api_id, null: false

      t.timestamps
    end

    add_index :books, :googlebooksapi_id, unique: true
  end
end
