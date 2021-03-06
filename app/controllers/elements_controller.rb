class ElementsController < ApplicationController
  before_filter :find_empresa
  before_filter :find_project

  # GET /elements
  # GET /elements.xml
  def index
    @elements =  @project.elements.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @elements }
    end
  end

  # GET /elements/1
  # GET /elements/1.xml
  def show
    @element =  @project.elements.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @element }
    end
  end

  # GET /elements/new
  # GET /elements/new.xml
  def new
    @element = @project.elements.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @element }
    end
  end

  # GET /elements/1/edit
  def edit
    @element =  @project.elements.find(params[:id])
  end

  # POST /elements
  # POST /elements.xml
  def create
    @element = @project.elements.build(params[:element])

    respond_to do |format|
      if @element.save
        format.html { redirect_to([@empresa, @project, @element], :notice => 'Element was successfully created.') }
        format.xml  { render :xml => @element, :status => :created, :location => @element }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @element.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /elements/1
  # PUT /elements/1.xml
  def update
    @element =  @project.elements.find(params[:id])

    respond_to do |format|
      if @element.update_attributes(params[:element])
        format.html { redirect_to(current_empresa_and_proyect_path_for(@element), :notice => 'Element was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @element.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /elements/1
  # DELETE /elements/1.xml
  def destroy
    @element =  @project.elements.find(params[:id])
    @element.destroy

    respond_to do |format|
      format.html { redirect_to(current_empresa_and_proyect_path_for(@element)) }
      format.xml  { head :ok }
    end
  end

end
