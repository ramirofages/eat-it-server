class Order < ActiveRecord::Base
  belongs_to :provider
  has_many :requests, dependent: :destroy
end
