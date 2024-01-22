class ModelsController < ApplicationController
  def index
    @models = Model.all
    render :index
  end

  def show
    @model = Model.find_by(id: params[:id])
    render :show
  end

  def create
    @model = Model.create(
      name: params[:name],
      manufacturer_id: params[:manufacturer_id],
      year_introduced: params[:year_introduced],
      body_styles: params[:body_styles],
      img: params[:img],
    )
    render :show
  end

  def update
    @model = Model.find_by(id: params[:id])
    @model.update(
      name: params[:name] || @model.name,
      manufacturer_id: params[:manufacturer_id] || @model.manufacturer_id,
      year_introduced: params[:year_introduced] || @model.year_introduced,
      body_styles: params[:body_styles] || @model.body_styles,
      img: params[:img] || @model.img,
    )
    render :show
  end

  def delete
    @model = Model.find_by(id: params[:id])
    @model.destroy
    render json: { message: "Model removed." }
  end
end
