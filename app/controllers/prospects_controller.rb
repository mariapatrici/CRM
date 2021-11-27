class ProspectsController < ApplicationController

  def index
    @prospects = Prospect.all
  end

  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(prospect_params)
    if @prospect.save
      redirect_to new_prospect_path
    else
      render :new
    end
  end

  def show
    @prospects = Prospect.all
  end

  def update
    find_prospect
    @prospect.update(prospect_params)
    redirect_to prospect_path(@prospect)
  end

  def edit
    @prospect = Prospect.find(params[:id])
  end

  def destroy
    @prospect.destroy
    redirect_to prospects_path
  end

  private

  def set_prospect
    @prospect = Prospect.find(params[:id])
  end

  def prospect_params
    params.require(:prospect).permit(:name, :last_name, :phone, :email, :status)
  end

  def find_prospect
    @prospect = Prospect.find(params[:id])
  end
end
