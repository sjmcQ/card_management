class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.column :card_name,          :string
      t.column :card_number,        :string
      t.column :card_balance,       :decimal 
      t.column :card_balance_date,  :datetime
      t.column :card_min_payment,   :decimal 
      t.column :card_apr,           :decimal 
      t.column :card_priority,      :string
      t.column :card_type,          :string
      t.column :card_provider,      :string
      t.column :card_expiry_date,   :datetime

      t.timestamps
    end
  end
end
