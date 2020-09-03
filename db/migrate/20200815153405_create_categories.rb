class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :priority, null: false
      t.references :article, null: true, foreign_key: true

      t.timestamps
    end
  end
end
