class TasksController < ApplicationController
  def _logged_in
  end
  def import
    Task.import(params[:file])
    redirect_to root_url
  end
end
