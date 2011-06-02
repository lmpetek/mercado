class ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  protect_from_forgery
  helper_method :current_empresa_and_proyect_path_for
  protected

  def find_empresa
    raise "SE NECESITA una empresa!!!!!!!!!!!" if params[:empresa_id].blank?
    @empresa = Empresa.find(params[:empresa_id])
  end
  def find_project
    raise "SE NECESITA UN Proyecto!!!!!!!!!!!" if params[:project_id].blank?
    @project = @empresa.projects.find(params[:project_id])
  end

  def find_element
    raise "SE NECESITA UN Elemento!!!!!!!!!!!" if params[:element_id].blank?
    @element = @projects.find(params[:element_id])
  end

  def current_empresa_and_proyect_path_for(resource)
    [@empresa, @project, resource]
  end

end
