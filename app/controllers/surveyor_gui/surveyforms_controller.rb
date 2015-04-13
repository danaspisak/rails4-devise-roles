module SurveyorGuiControllerCustomMethods
  def self.included(base)
    # base.send :before_filter, :require_user   # AuthLogic
    # base.send :before_filter, :login_required  # Restful Authentication
    # base.send :layout, 'surveyor_custom'
    base.send :before_filter, :authenticate_user!
  end
end

class SurveyorGui::SurveyformsController < ApplicationController
  include Surveyor::SurveyorControllerMethods
  include SurveyorGui::SurveyformsControllerMethods
  include SurveyorGuiControllerCustomMethods
end
