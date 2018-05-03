class Product
  include Mongoid::Document
  field :sku, type: String
  field :name, type: String
  field :information, type: Hash
  field :price, type: Integer
  field :images, type: Array
  field :tags, type: Array
  field :unit, type: String
  field :currency, type: String
  field :parent, type: String
  field :location, type: String
  field :model, type: String
  field :model_type, type: String
  field :model_control, type: String
  field :currency, type: String
  field :quantity, type: Integer
  field :brand, type: String


  def self.find_matches(name: )
    product = Product.find_by(name: name)
    if product.model_type
      models = Product.where(parent: product.sku)
      product[:models] = models
    end
    return product || []
  end
end
