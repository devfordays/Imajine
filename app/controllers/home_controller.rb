class HomeController < ApplicationController
  def index
  	@contact = Contact.new if !defined? @contact #automatically create a contact variable 
  end

  def create_contact_from_form
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to home_url , notice: 'Thanks for the Message!' } #
      else
        format.html { redirect_to home_url}
      end
    end
  end


end
