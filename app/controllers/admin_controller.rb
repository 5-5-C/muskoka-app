class AdminController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    @admin.name = @admin.title
    if @admin.save
      redirect_to root_url
    else
      render "new"
    end
  end

  private
  def admin_params
    params.require(:admin).permit(:name, :story, :image, :filter, :title)
  end
end
