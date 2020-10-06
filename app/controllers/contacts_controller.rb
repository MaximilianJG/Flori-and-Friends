class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(strong_contact_params)
    @dog = Dog.find(params[:dog_id])
    @contact.dog = @dog
    if @contact.save
      ContactMailer.general_message(@contact).deliver_now
      redirect_back(fallback_location: root_path)
    else
      render 'dogs/show'
    end
  end

  private

  def thanks
  end

  def strong_contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :message, :dog_id)
  end

end
