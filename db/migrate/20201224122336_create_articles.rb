class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :author_id
      t.string :title
      t.text :text
      t.string :image
      t.integer :vote_count

      t.timestamps
    end
  end
end
