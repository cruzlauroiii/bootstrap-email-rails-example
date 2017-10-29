require 'bootstrap-email'

class ExampleMailer < ApplicationMailer

  def show
    bootstrap_mail(to: 'test@example.com',
         from: 'knotlabs@gmail.com',
         subject: 'test',
        )
  end
end
