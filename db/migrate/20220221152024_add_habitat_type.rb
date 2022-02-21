class AddHabitatType < ActiveRecord::Migration[7.0]
  def change
    change_table :animals do |t|
      t.string :habitat_type
    end
  end
end
