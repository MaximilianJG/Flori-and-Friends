class ContactMailer < ApplicationMailer
  default from: "flori.friends.animalhope@gmail.com"

  def general_message(contact)
    @contact = contact
    mail( :to => "flori.friends.animalhope@gmail.com", :subject => "Kontaktanfrage #{@contact.dog.name if !@contact.dog.nil?}")
  end
end
