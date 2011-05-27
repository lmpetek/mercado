class ElementVariableValorsController < ApplicationController
  # GET /element_variable_valors
  # GET /element_variable_valors.xml
  def index
    @element_variable_valors = ElementVariableValor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @element_variable_valors }
    end
  end

  # GET /element_variable_valors/1
  # GET /element_variable_valors/1.xml
  def show
    @element_variable_valor = ElementVariableValor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @element_variable_valor }
    end
  end

  # GET /element_variable_valors/new
  # GET /element_variable_valors/new.xml
  def new
    @element_variable_valor = ElementVariableValor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @element_variable_valor }
    end
  end

  # GET /element_variable_valors/1/edit
  def edit
    @element_variable_valor = ElementVariableValor.find(params[:id])
  end

  # POST /element_variable_valors
  # POST /element_variable_valors.xml
  def create
    @element_variable_valor = ElementVariableValor.new(params[:element_variable_valor])

    respond_to do |format|
      if @element_variable_valor.save
        format.html { redirect_to(@element_variable_valor, :notice => 'Element variable valor was successfully created.') }
        format.xml  { render :xml => @element_variable_valor, :status => :created, :location => @element_variable_valor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @element_variable_valor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /element_variable_valors/1
  # PUT /element_variable_valors/1.xml
  def update
    @element_variable_valor = ElementVariableValor.find(params[:id])

    respond_to do |format|
      if @element_variable_valor.update_attributes(params[:element_variable_valor])
        format.html { redirect_to(@element_variable_valor, :notice => 'Element variable valor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @element_variable_valor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /element_variable_valors/1
  # DELETE /element_variable_valors/1.xml
  def destroy
    @element_variable_valor = ElementVariableValor.find(params[:id])
    @element_variable_valor.destroy

    respond_to do |format|
      format.html { redirect_to(element_variable_valors_url) }
      format.xml  { head :ok }
    end
  end
end
