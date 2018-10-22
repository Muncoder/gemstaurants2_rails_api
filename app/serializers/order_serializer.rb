class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :table_id, :id_name

  belongs_to :table

end
