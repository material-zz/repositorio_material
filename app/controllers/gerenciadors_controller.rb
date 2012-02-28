class GerenciadorsController < ApplicationController
  # GET /gerenciadors
  # GET /gerenciadors.json
  def index
    @gerenciadors = Gerenciador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gerenciadors }
    end
  end

  # GET /gerenciadors/1
  # GET /gerenciadors/1.json
  def show
    @gerenciador = Gerenciador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gerenciador }
    end
  end

  # GET /gerenciadors/new
  # GET /gerenciadors/new.json
  def new
    @gerenciador = Gerenciador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gerenciador }
    end
  end

  # GET /gerenciadors/1/edit
  def edit
    @gerenciador = Gerenciador.find(params[:id])
  end

  # POST /gerenciadors
  # POST /gerenciadors.json
  def create
    @gerenciador = Gerenciador.new(params[:gerenciador])

    respond_to do |format|
      if @gerenciador.save
        format.html { redirect_to @gerenciador, notice: 'Gerenciador was successfully created.' }
        format.json { render json: @gerenciador, status: :created, location: @gerenciador }
      else
        format.html { render action: "new" }
        format.json { render json: @gerenciador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gerenciadors/1
  # PUT /gerenciadors/1.json
  def update
    @gerenciador = Gerenciador.find(params[:id])

    respond_to do |format|
      if @gerenciador.update_attributes(params[:gerenciador])
        format.html { redirect_to @gerenciador, notice: 'Gerenciador was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gerenciador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gerenciadors/1
  # DELETE /gerenciadors/1.json
  def destroy
    @gerenciador = Gerenciador.find(params[:id])
    @gerenciador.destroy

    respond_to do |format|
      format.html { redirect_to gerenciadors_url }
      format.json { head :ok }
    end
  end
end
