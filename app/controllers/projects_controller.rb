class ProjectsController < ApplicationController
  before_filter :find_empresa

  # GET /projects
  # GET /projects.xml
  def index
    @projects = @empresa.projects.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = @empresa.projects.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @project = @empresa.projects.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = @empresa.projects.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = @empresa.projects.build(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to([@empresa, @project], :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => [@empresa, @project] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = @empresa.projects.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to([@empresa, @project], :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = @empresa.projects.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(empresa_projects_url(@empresa)) }
      format.xml  { head :ok }
    end
  end

  protected

  def find_empresa
    raise "SE NECESITA UNA EMPRESA!!!!!!!!!!!" if params[:empresa_id].blank?
    @empresa = Empresa.find(params[:empresa_id])
  end
end
