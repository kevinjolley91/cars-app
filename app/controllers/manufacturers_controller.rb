class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
    render :index
  end

  def show
    @manufacturer = Manufacturer.find_by(id: params[:id])
    render :show
  end

  def create
    @manufacturer = Manufacturer.create(
      name: params[:name],
      year_created: params[:year_created],
      country: params[:country],
      img_logo: params[:img_logo],
    )
    render :show
  end

  def update
    @manufacturer = Manufacturer.find_by(id: params[:id])
    @manufacturer.update(
      name: params[:name] || @manufacturer.name,
      year_created: params[:year_created] || @manufacturer.year_created,
      country: params[:country] || @manufacturer.country,
      img_logo: params[:img_logo] || @manufacturer.img_logo,
    )
    render :show
  end

  def delete
    @manufacturer = Manufacturer.find_by(id: params[:id])
    @manufacturer.destroy
    render json: { message: "Manufacturer removed." }
  end
end
