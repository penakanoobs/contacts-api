class ContactsController < ApplicationController

  def create
    @contact = Contact.new contact_params
    if @contact.save
      render :json => {:message => 'Contact added successfully'}
    end
  end

  def index
    @contacts = Contact.all
    render :partial => 'contacts/contact', :locals => {:contacts => @contacts}
  end





  private

  def contact_params
    params.require(:contact).
      permit :name, :position, :contact_no, :email, :location, :description
  end

end
