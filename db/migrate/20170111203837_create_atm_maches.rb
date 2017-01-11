class CreateAtmMaches < ActiveRecord::Migration[5.0]
  def change
    create_table :atm_maches do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end