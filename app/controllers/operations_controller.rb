class OperationsController < ApplicationController
  def index
    flash[:notice] = "Servus /// Grüß dich"
  end
end
