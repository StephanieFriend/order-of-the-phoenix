class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :role
      t.string :house
      t.string :patronus
    end
  end
end
