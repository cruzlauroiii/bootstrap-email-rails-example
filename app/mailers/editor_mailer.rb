class EditorMailer < ApplicationMailer

  def show body
    mail = mail(to: 'test@example.com',
         from: 'knotlabs@gmail.com',
         subject: 'test',
         body: body.html_safe,
         content_type: 'text/html')

    bootstrap = BootstrapEmail::Compiler.new(mail)
    bootstrap.perform_full_compile
  end
end
