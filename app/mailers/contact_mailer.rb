class ContactMailer < ActionMailer::Base
  default to: 'info@topside-sport.de'
  def contact_email(name, email, nachricht)
    @name = name
    @email = email
    @nachricht = nachricht
    mail(from: email, subject: 'Kontaktformular Anfrage')
  end
end