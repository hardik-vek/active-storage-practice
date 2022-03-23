# frozen_string_literal: true
class Product < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 2, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :price, presence: true
  has_one_attached :product_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100,100]
  end
  has_one_attached :product_pdf 
end