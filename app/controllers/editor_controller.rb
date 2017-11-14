class EditorController < ApplicationController

  def index
    @html = nil
    if params[:markup].present?
      @html = EditorMailer.show(params[:markup])
    end
    response.headers.delete "X-Frame-Options"
  end
end
