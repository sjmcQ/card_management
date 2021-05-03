class CardsController < ApplicationController 

def show 
  @card = Card.find(params[:id])
end

def index
  @card = Card.all
end

def new
  @card = Card.new
end

def edit
  @card = Card.find(params[:id])
end

def create
  @card = Card.new(params.require(:card).permit(:card_name :card_number :card_balance :card_balance_date :card_min_payment :card_apr :card_priority :card_type  :card_provider :card_expiry_date))
  #byebug
  if @card.save
    flash[:notice] = "Card was created successfully" 
    redirect_to (@card)
  else
    render 'new'
  end
end

def update
  @card = Card.find(params[:id])
  if @card.update(params.require(:card).permit(:card_name :card_number :card_balance :card_balance_date :card_min_payment :card_apr :card_priority :card_type  :card_provider :card_expiry_date))
    flash[:notice] = "Card was updated successfully"
    redirect_to @card
  else
    render 'edit'    
  end 
end

def destroy
  @card = Card.find(params[:id])
  @card.destroy
  redirect_to card_path
  #if @article.destroy(params.require(:article).permit(:title, :description))
    #flash[:notice] = "Article was deleted successfully"
    #redirect_to @article
  #else
    #render 'index'
  #end  
end