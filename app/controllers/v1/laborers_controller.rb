class V1::LaborersController < ApplicationController
  def index
    render json: Laborer.all.to_json
  end

  def show
    laborer = Laborer.find_by(id: params[:id])

    if laborer.nil?
      render status: 404, json: { error: 'Laborer not found' }.to_json
    else
      render json: laborer.to_json
    end
  end

  def create
    laborer = Laborer.new(laborer_params)

    if laborer.save
      render json: laborer.to_json
    else
      render status: 500, json: { error: 'Laborer could not be created' }.to_json
    end
  end

  def destroy
    laborer = Laborer.find_by(id: params[:id])

    if laborer.nil?
      render status: 404, json: { error: 'Laborer not found' }.to_json
    else
      laborer.destroy
      render json: { message: 'Laborer deleted' }.to_json
    end
  end

  private

  def laborer_params
    params.require(:laborer).permit(:name, :skill, :description, :country, :city, :price)
  end
end
