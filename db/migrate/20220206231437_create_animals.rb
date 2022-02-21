class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.text :search_name
      t.text :image_name
      t.text :habitat
      t.text :real
      t.timestamps
    end
  end
end
