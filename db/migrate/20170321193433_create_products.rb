class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.float :weight
      t.string :photo

      t.timestamps
    end
  end
end
