class AdminController < ApplicationController

  def new
    @admin = Admin.new
    @maximum_title_length = Entry.validators_on( :title ).first.options[:maximum]
    @maximum_story_length = Entry.validators_on( :story ).first.options[:maximum]
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

  def show
    @admin = Admin.find(params[:id])
  end

  private
  def admin_params
    params.require(:admin).permit(:name, :story, :image, :filter, :title)
  end
end
