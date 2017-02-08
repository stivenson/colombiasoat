class User < ApplicationRecord
  belongs_to :type_document
  belongs_to :rol
  has_one :vehicle 
end
