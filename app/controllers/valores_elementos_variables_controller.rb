class ValoresElementosVariablesController < ApplicationController
  # GET /valores_elementos_variables
  # GET /valores_elementos_variables.xml
  def index
    @valores_elementos_variables = ValoresElementosVariable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @valores_elementos_variables }
    end
  end

  # GET /valores_elementos_variables/1
  # GET /valores_elementos_variables/1.xml
  def show
    @valores_elementos_variable = ValoresElementosVariable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @valores_elementos_variable }
    end
  end

  # GET /valores_elementos_variables/new
  # GET /valores_elementos_variables/new.xml
  def new
    @valores_elementos_variable = ValoresElementosVariable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @valores_elementos_variable }
    end
  end

  # GET /valores_elementos_variables/1/edit
  def edit
    @valores_elementos_variable = ValoresElementosVariable.find(params[:id])
  end

  # POST /valores_elementos_variables
  # POST /valores_elementos_variables.xml
  def create
    @valores_elementos_variable = ValoresElementosVariable.new(params[:valores_elementos_variable])

    respond_to do |format|
      if @valores_elementos_variable.save
        format.html { redirect_to(@valores_elementos_variable, :notice => 'Valores elementos variable was successfully created.') }
        format.xml  { render :xml => @valores_elementos_variable, :status => :created, :location => @valores_elementos_variable }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @valores_elementos_variable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /valores_elementos_variables/1
  # PUT /valores_elementos_variables/1.xml
  def update
    @valores_elementos_variable = ValoresElementosVariable.find(params[:id])

    respond_to do |format|
      if @valores_elementos_variable.update_attributes(params[:valores_elementos_variable])
        format.html { redirect_to(@valores_elementos_variable, :notice => 'Valores elementos variable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @valores_elementos_variable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /valores_elementos_variables/1
  # DELETE /valores_elementos_variables/1.xml
  def destroy
    @valores_elementos_variable = ValoresElementosVariable.find(params[:id])
    @valores_elementos_variable.destroy

    respond_to do |format|
      format.html { redirect_to(valores_elementos_variables_url) }
      format.xml  { head :ok }
    end
  end
end
