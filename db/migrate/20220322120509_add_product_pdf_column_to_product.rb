class AddProductPdfColumnToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :product_pdf, :string
  end
end
