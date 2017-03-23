class CreateDistributors < ActiveRecord::Migration[5.0]
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phoneNumber
      t.string :photo

      t.timestamps
    end
  end
end
