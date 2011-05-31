class VariableValorsController < ApplicationController
  # GET /variable_valors
  # GET /variable_valors.xml
  
  before_filter :authenticate_user!
  before_filter :find_empresa
  before_filter :find_project
  def index
    @variable_valors = @project.variable_valors.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @variable_valors }
    end
  end

  # GET /variable_valors/1
  # GET /variable_valors/1.xml
  def show
    @variable_valor = @project.variable_valors.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @variable_valor }
    end
  end

  # GET /variable_valors/new
  # GET /variable_valors/new.xml
  def new
    @variable_valor = @project.variable_valors.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @variable_valor }
    end
  end

  # GET /variable_valors/1/edit
  def edit
    @variable_valor = @project.variable_valors.find(params[:id])
  end

  # POST /variable_valors
  # POST /variable_valors.xml
  def create
    @variable_valor = @project.variable_valors.build(params[:variable_valor])

    respond_to do |format|
      if @variable_valor.save
        format.html { redirect_to([@empresa,@project,@variable_valor], :notice => 'Variable valor was successfully created.') }
        format.xml  { render :xml => @variable_valor, :status => :created, :location => @variable_valor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @variable_valor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /variable_valors/1
  # PUT /variable_valors/1.xml
  def update
    @variable_valor = @project.variable_valors.find(params[:id])

    respond_to do |format|
      if @variable_valor.update_attributes(params[:variable_valor])
        format.html { redirect_to(current_empresa_and_proyect_path_for(@element), :notice => 'Variable valor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @variable_valor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /variable_valors/1
  # DELETE /variable_valors/1.xml
  def destroy
    @variable_valor = @project.variable_valors.find(params[:id])
    @variable_valor.destroy

    respond_to do |format|
      format.html { redirect_to([@empresa,@project,@variable_valor]) }
      format.xml  { head :ok }
    end
  end
end
