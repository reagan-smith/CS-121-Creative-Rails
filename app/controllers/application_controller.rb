class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def mainPage
  	render html: "wAAAAAAAAAAte!"
  end
end
