class VariablePreciosController < ApplicationController
  # GET /variable_precios
  # GET /variable_precios.xml
  
  before_filter :authenticate_user!
  before_filter :find_empresa
  before_filter :find_project

  def index
    @variable_precios = @project.variable_precios.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @variable_precios }
    end
  end

  # GET /variable_precios/1
  # GET /variable_precios/1.xml
  def show
    @variable_precio = @project.variable_precios.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @variable_precio }
    end
  end

  # GET /variable_precios/new
  # GET /variable_precios/new.xml
  def new
    @variable_precio = @project.variable_precios.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @variable_precio }
    end
  end

  # GET /variable_precios/1/edit
  def edit
    @variable_precio = @project.variable_precios.find(params[:id])
  end

  # POST /variable_precios
  # POST /variable_precios.xml
  def create
    @variable_precio = @project.variable_precios.build(params[:variable_precio])

    respond_to do |format|
      if @variable_precio.save
        format.html { redirect_to([@empresa,@project,@variable_precio], :notice => 'Variable precio was successfully created.') }
        format.xml  { render :xml => @variable_precio, :status => :created, :location => @variable_precio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @variable_precio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /variable_precios/1
  # PUT /variable_precios/1.xml
  def update
    @variable_precio = @project.variable_precios.find(params[:id])

    respond_to do |format|
      if @variable_precio.update_attributes(params[:variable_precio])
        format.html { redirect_to(current_empresa_and_proyect_path_for(@element), :notice => 'Variable precio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @variable_precio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /variable_precios/1
  # DELETE /variable_precios/1.xml
  def destroy
    @variable_precio = @project.variable_precios.find(params[:id])
    @variable_precio.destroy

    respond_to do |format|
      format.html { redirect_to(current_empresa_and_proyect_path_for(@element)) }
      format.xml  { head :ok }
    end
  end

end
