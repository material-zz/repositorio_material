class MateriaisController < ApplicationController
  # GET /materiais
  # GET /materiais.json
  def index
    @materiais = Materiai.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materiais }
    end
  end

  # GET /materiais/1
  # GET /materiais/1.json
  def show
    @materiai = Materiai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @materiai }
    end
  end

  # GET /materiais/new
  # GET /materiais/new.json
  def new
    @materiai = Materiai.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @materiai }
    end
  end

  # GET /materiais/1/edit
  def edit
    @materiai = Materiai.find(params[:id])
  end

  # POST /materiais
  # POST /materiais.json
  def create
    @materiai = Materiai.new(params[:materiai])

    respond_to do |format|
      if @materiai.save
        format.html { redirect_to @materiai, notice: 'Materiai was successfully created.' }
        format.json { render json: @materiai, status: :created, location: @materiai }
      else
        format.html { render action: "new" }
        format.json { render json: @materiai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materiais/1
  # PUT /materiais/1.json
  def update
    @materiai = Materiai.find(params[:id])

    respond_to do |format|
      if @materiai.update_attributes(params[:materiai])
        format.html { redirect_to @materiai, notice: 'Materiai was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @materiai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiais/1
  # DELETE /materiais/1.json
  def destroy
    @materiai = Materiai.find(params[:id])
    @materiai.destroy

    respond_to do |format|
      format.html { redirect_to materiais_url }
      format.json { head :ok }
    end
  end
end
