class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Mountain.name ,body:Faker::Lorem.paragraphs(number: 1))
    @object = @email.object
    @body = @email.body
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])
  end

end

