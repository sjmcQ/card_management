class Card < ApplicationRecord
  validates :card_name, presence: true, length: {maximum: 50, minimun: 15};
  validates :card_number, presence: true, length: {maximum: 16, minimun: 16};
  validates :card_balance, presence: true, length: {maximum: 50, minimun: 15}, numericality: true;
  
end
