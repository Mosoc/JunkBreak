class CardsController < ApplicationController

before_action :find_operation

def new
    @card = @operation.cards.new
    
end

def edit
    @card = @operation.cards.find(params[:id])
end

def create
    @card = @operation.cards.build(card_params)
    
    if @card.save
        redirect_to operation_path(@operation), notice: "Refresh"
    else
        render :new
    end
end

def update
    @card = @operation.cards.find(params[:id])
    
    if @card.update(card_params)
        redirect_to operation_path(@operation), notice: "Refresh"
    else
        render :edit
    end
end

def destroy 
    @card = @operation.cards.find(params[:id])
    @card.destroy
    redirect_to operation_path(@operation), alert: "Deletion"
    
end

private

def find_operation
    @operation = Operation.find(params[:operation_id])
end

  def card_params
    params.require(:card).permit(:content)
  end

end
