class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.text :search_name
      t.text :image_name
      t.string :habitat

      t.timestamps
    end
  end
end
