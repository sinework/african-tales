class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.bigint :author_id
      t.string :title
      t.text :text
      t.string :image
      t.integer :vote_count, default:0

      t.timestamps
    end
    add_foreign_key :articles, :users, column: :author_id
  end
end
