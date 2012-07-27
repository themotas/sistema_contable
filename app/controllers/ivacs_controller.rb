class IvacsController < ApplicationController
  # GET /ivacs
  # GET /ivacs.json
  def index
    @ivacs = Ivac.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ivacs }
    end
  end

  # GET /ivacs/1
  # GET /ivacs/1.json
  def show
    @ivac = Ivac.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ivac }
    end
  end

  # GET /ivacs/new
  # GET /ivacs/new.json
  def new
    @ivac = Ivac.new
    @clientes = Cliente.all
    @empresas = Empresa.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ivac }
    end
  end

  # GET /ivacs/1/edit
  def edit
    @ivac = Ivac.find(params[:id])
    @clientes = Cliente.all
    @empresas = Empresa.all
  end

  # POST /ivacs
  # POST /ivacs.json
  def create
    @ivac = Ivac.new(params[:ivac])
    
    @ivac.total = @ivac.neto_sin_iva + @ivac.no_gravado_exento + @ivac.percepcion_ingresos_brutuos + @ivac.retencion_ingresos_brutos + @ivac.retencion_de_iva + @ivac.retencion_de_ganancias

    respond_to do |format|
      if @ivac.save
        format.html { redirect_to @ivac, notice: 'Ivac was successfully created.' }
        format.json { render json: @ivac, status: :created, location: @ivac }
      else
        format.html { render action: "new" }
        format.json { render json: @ivac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ivacs/1
  # PUT /ivacs/1.json
  def update
    @ivac = Ivac.find(params[:id])
    
    @ivac.total = @ivac.neto_sin_iva + @ivac.no_gravado_exento + @ivac.percepcion_ingresos_brutuos + @ivac.retencion_ingresos_brutos + @ivac.retencion_de_iva + @ivac.retencion_de_ganancias


    respond_to do |format|
      if @ivac.update_attributes(params[:ivac])
        format.html { redirect_to @ivac, notice: 'Ivac was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ivac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ivacs/1
  # DELETE /ivacs/1.json
  def destroy
    @ivac = Ivac.find(params[:id])
    @ivac.destroy

    respond_to do |format|
      format.html { redirect_to ivacs_url }
      format.json { head :no_content }
    end
  end
  
  def psearch
    @ivacs = Ivac.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ivacs }
    end      
  end  
  
  def search

    @datee = params[:dateSearch]
    
    if(@datee)
     @ivacs = Ivac.all(:conditions => { :fecha_de_la_factura => Date.strptime(@datee, '%d/%m/%Y') })
    else
     @ivacs = Ivac.all(:conditions => { :fecha_de_la_factura => Date.strptime('24/12/2099', '%d/%m/%Y') })
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ivacs }
    end      
  end  
end
