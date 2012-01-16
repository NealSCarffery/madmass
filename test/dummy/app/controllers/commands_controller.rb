
class CommandsController < ApplicationController
  protect_from_forgery

  respond_to :json, :html

  include ApplicationHelper
  include ActionView::Helpers::JavaScriptHelper

  before_filter :get_agent

  def execute
      return unless params[:agent]
      status = Madmass.current_agent.execute(params[:agent])
      @perception = Madmass.current_perception;

    respond_to do |format|
      format.html {render :execute, :status => status}
      format.json {render :json => @perception.to_json, :status => status}
    end
 
 end


  private

  def get_agent
   
      Madmass.current_agent = Madmass::Agent::ProxyAgent.new
   
  end

end
