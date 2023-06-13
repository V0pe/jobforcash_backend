class V1::LaborersController < ApplicationController
  def index
    @laborer = Laborer.all

    render json: LaborerSerializer.new(@laborer).serializable_hash[:data], status: :ok
  end

  def show
    @laborer = Laborer.find_by(id: params[:id])

    if @laborer.nil?
      render status: 404, json: { error: 'Laborer not found' }.to_json
    else
      render json: LaborerSerializer.new(@laborer).serializable_hash[:data][:attributes], status: :ok
    end
  end

  def create
    @laborer = Laborer.new(laborer_params)

    if @laborer.save
      render json: LaborerSerializer.new(@laborer).serializable_hash[:data][:attributes], status: :created
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
    params.permit(:name, :skill, :description, :country, :city, :price, :image)
  end
end
