class CocktailsController < ApplicationController
   before_action :set_cocktail, only: [:show, :edit, :update, :destroy, :chef]
  def index
    @cocktails = Cocktail.all
  end

  def show
    # @dose = Dose.where(cocktail_id: params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :doses, :picture, :picture_cache)
  end
end
