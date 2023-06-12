class LaborerSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :skill, :description, :country, :city, :price, :image_url
end
