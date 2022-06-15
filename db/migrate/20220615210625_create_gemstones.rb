class CreateGemstones < ActiveRecord::Migration[7.0]
  def change
    create_table :gemstones do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
