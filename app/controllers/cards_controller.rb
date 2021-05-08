class CardsController < ApplicationController

  def show
    @card = Card.find(params[:id])
  end

  def index
    @cards = Card.all
  end

  def new
    
  end

  def create
    
    @card = Card.new(params.require(:card).permit(:card_name, :card_number, :card_balance, 
      :card_balance_date, :card_min_payment, :card_apr, :card_priority, :card_type, :card_provider, :card_expiry_date
     )
    )
    @card.save
    redirect_to card_path(@card)
  end

end
