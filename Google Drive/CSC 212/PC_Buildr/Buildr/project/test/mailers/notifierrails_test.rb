require 'test_helper'

class NotifierrailsTest < ActionMailer::TestCase
  test "g" do
    mail = Notifierrails.g
    assert_equal "G", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "controller" do
    mail = Notifierrails.controller
    assert_equal "Controller", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "contact" do
    mail = Notifierrails.contact
    assert_equal "Contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
