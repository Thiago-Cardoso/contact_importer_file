class ChangeCreditCardToContact < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :credit_card, :integer, limit: 8
  end
end
