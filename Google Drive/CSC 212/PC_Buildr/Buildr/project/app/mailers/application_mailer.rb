class ApplicationMailer < ActionMailer::Base
  default from: "order@rtr.com"
  def order_email(build)
    @build = build
    # @url  = 'http://www.rochestertechrepairs.com'
    mail(to: "violaavenger24@gmail.com", subject: 'New build')
  end
  layout 'mailer'
end
