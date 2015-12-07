class Mailer
  def run
    @build = params[]
    UserMailer.applocation_mailer(@build).deliver_now
  end
end
