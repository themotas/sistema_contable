class IvavsController < ApplicationController
  # GET /ivavs
  # GET /ivavs.json
  def index
    @ivavs = Ivav.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ivavs }
    end
  end

  # GET /ivavs/1
  # GET /ivavs/1.json
  def show
    @ivav = Ivav.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ivav }
    end
  end

  # GET /ivavs/new
  # GET /ivavs/new.json
  def new
    @ivav = Ivav.new
    @clientes = Cliente.all
    @empresas = Empresa.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ivav }
    end
  end

  # GET /ivavs/1/edit
  def edit
    @ivav = Ivav.find(params[:id])
    @clientes = Cliente.all
    @empresas = Empresa.all
  end

  # POST /ivavs
  # POST /ivavs.json
  def create
    @ivav = Ivav.new(params[:ivav])
    
    @ivav.total = @ivav.neto_sin_iva + @ivav.percepcion_ingresos_brutuos + @ivav.retencion_ingresos_brutos + @ivav.retencion_de_iva + @ivav.retencion_de_ganancias

    respond_to do |format|
      if @ivav.save
        format.html { redirect_to @ivav, notice: 'Ivav was successfully created.' }
        format.json { render json: @ivav, status: :created, location: @ivav }
      else
        format.html { render action: "new" }
        format.json { render json: @ivav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ivavs/1
  # PUT /ivavs/1.json
  def update
    @ivav = Ivav.find(params[:id])

    @ivav.total = @ivav.neto_sin_iva + @ivav.percepcion_ingresos_brutuos + @ivav.retencion_ingresos_brutos + @ivav.retencion_de_iva + @ivav.retencion_de_ganancias

    respond_to do |format|
      if @ivav.update_attributes(params[:ivav])
        format.html { redirect_to @ivav, notice: 'Ivav was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ivav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ivavs/1
  # DELETE /ivavs/1.json
  def destroy
    @ivav = Ivav.find(params[:id])
    @ivav.destroy

    respond_to do |format|
      format.html { redirect_to ivavs_url }
      format.json { head :no_content }
    end
  end
  
 
   def psearch
    @ivavs = Ivav.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ivavs }
    end      
  end
 
  def search
      
    @datee = params[:dateSearch]
    
    if(@datee)
     @ivavs = Ivav.all(:conditions => { :fecha_de_la_factura => Date.strptime(@datee, '%d/%m/%Y') })
    else
     @ivavs = Ivav.all(:conditions => { :fecha_de_la_factura => Date.strptime('24/12/2099', '%d/%m/%Y') })
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ivavs }
    end      
  end
      
end
