class EditorController < ApplicationController

  def index
    # @markup = params[:markup].present? ? params[:markup] :
    @html = nil
    if params[:markup].present?
      # @html = ActionMailer::Base.bootstrap_mail(from: "me@example.com", to: "you@example.com", subject: "test", raw_soure: params[:markup])
      # byebug
      @html = EditorMailer.show(params[:markup])
    end
  end
end
