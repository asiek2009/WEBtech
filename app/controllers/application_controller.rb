class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize

def authorize
end

end
