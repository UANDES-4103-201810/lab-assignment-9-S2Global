class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :street
      t.boolean :apartment
      t.string :description
      t.string :zipcode

      t.timestamps
    end
  end
end
