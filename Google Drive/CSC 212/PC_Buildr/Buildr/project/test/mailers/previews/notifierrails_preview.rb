# Preview all emails at http://localhost:3000/rails/mailers/notifierrails
class NotifierrailsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifierrails/g
  def g
    Notifierrails.g
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifierrails/controller
  def controller
    Notifierrails.controller
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifierrails/contact
  def contact
    Notifierrails.contact
  end

end
