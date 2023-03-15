# Application controller class extends the ActionController class

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end
