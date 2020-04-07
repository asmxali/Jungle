class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASSWORD']

  def show
  @products_count = Product.count 
  @products_quantity =Product.sum(:quantity)
  @categories = Category.count
  end
end
