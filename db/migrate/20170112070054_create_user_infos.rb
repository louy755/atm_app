class CreateUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :address
      t.string :city
      t.string :postel_code
      t.string :state
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
