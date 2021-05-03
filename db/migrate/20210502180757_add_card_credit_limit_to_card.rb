class AddCardCreditLimitToCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :card_credit_limit, :decimal
  end
end
