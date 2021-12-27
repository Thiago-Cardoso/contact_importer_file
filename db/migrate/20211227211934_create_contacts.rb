class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.date :date_of_birth
      t.string :phone
      t.string :address
      t.integer :credit_card
      t.string :franchise
      t.string :email

      t.timestamps
    end
  end
end
