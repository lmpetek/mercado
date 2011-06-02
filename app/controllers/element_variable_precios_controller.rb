class ElementVariablePreciosController < ApplicationController
  before_filter :find_empresa
  before_filter :find_project
  before_filter :find_element
  # GET /element_variable_precios
  # GET /element_variable_precios.xml
  def index
    @element_variable_precios = @element.element_variable_precios.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @element_variable_precios }
    end
  end

  # GET /element_variable_precios/1
  # GET /element_variable_precios/1.xml
  def show
    @element_variable_precio = @element.element_variable_precios.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @element_variable_precio }
    end
  end

  # GET /element_variable_precios/new
  # GET /element_variable_precios/new.xml
  def new
    @element_variable_precio = @element.element_variable_precios.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @element_variable_precio }
    end
  end

  # GET /element_variable_precios/1/edit
  def edit
    @element_variable_precio = @element.element_variable_precios.find(params[:id])
  end

  # POST /element_variable_precios
  # POST /element_variable_precios.xml
  def create
    @element_variable_precio = @element.element_variable_precio.build(params[:element_variable_precio])

    respond_to do |format|
      if @element_variable_precio.save
        format.html { redirect_to([@empresa, @project, @element,@element_variable_precio], :notice => 'Element variable precio was successfully created.') }
        format.xml  { render :xml => @element_variable_precio, :status => :created, :location => @element_variable_precio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @element_variable_precio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /element_variable_precios/1
  # PUT /element_variable_precios/1.xml
  def update
    @element_variable_precio = @element.element_variable_precio.find(params[:id])

    respond_to do |format|
      if @element_variable_precio.update_attributes(params[:element_variable_precio])
        format.html { redirect_to([@empresa, @project, @element,@element_variable_precio], :notice => 'Element variable precio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @element_variable_precio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /element_variable_precios/1
  # DELETE /element_variable_precios/1.xml
  def destroy
    @element_variable_precio = @element.element.variable.precio.find(params[:id])
    @element_variable_precio.destroy

    respond_to do |format|
      format.html { redirect_to(element_variable_precios_url) }
      format.xml  { head :ok }
    end
  end
end
