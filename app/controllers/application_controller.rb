class ApplicationController < ActionController::API

  before_action :ensure_json_request

  def ensure_json_request
    unless request.get?      
      return if request.headers["Content-Type"] =~ /json/
      render :nothing => true, :status => :unsupported_media_type
    end
  end

end
