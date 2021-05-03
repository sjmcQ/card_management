class RemoveCreditLimitfromtablecards < ActiveRecord::Migration[6.1]
  def up
    remove_column :cards, :credit_limit
  end
end
