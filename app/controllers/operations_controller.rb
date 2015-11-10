class OperationsController < ApplicationController
  before_action :find_operation, only: [:show, :edit, :update, :destroy]
  
  def index
    #flash[:notice] = "Servus /// Grüß dich"
    @operations = Operation.all;
  end
  
  def show
    
  end

  def new
    @operation = Operation.new
  end
  
  def create
    @operation = Operation.create(operation_params)

    if @operation.save
      redirect_to operations_path
    else
      render :new
    end
  end
 
  def edit
    
  end
 
  def update
    if @operation.update(operation_params)
      redirect_to operations_path, notice: "Refresh"
    else
      render :edit
    end
  end

  def destroy
    @operation.destroy
    redirect_to operations_path, alert: "Deletion"
  end
  
  private
  
  def operation_params
    params.require(:operation).permit(:title, :description)
  end
  
  def find_operation
    @operation = Operation.find(params[:id])
  end
  
end
