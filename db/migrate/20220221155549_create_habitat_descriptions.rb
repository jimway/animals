class CreateHabitatDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :habitat_descriptions do |t|
      t.string :habitat_type
      t.text :habitat_description

      t.timestamps
    end
  end
end
