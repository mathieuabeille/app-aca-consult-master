class ContratcddsController < ApplicationController
 before_action :set_contratcdd, only: [:show, :edit, :update, :destroy]

  # GET /contrats
  # GET /contrats.json
  def index
    @contratcdds = Contratcdd.all

    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'contratcdds/reporte', pdf: 'Reporte'}
    end
  end

  # GET /contrats/1
  # GET /contrats/1.json
  def show
    @contratcdd = Contratcdd.find(params[:id])
    @contratcdd.user = current_user
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'contratcdds/reporte', pdf: 'Reporte'}
    end
  end

  # GET /contrats/new
  def new
    @employee = Employee.find(params[:employee_id])
    @contratcdd = Contratcdd.new


  end

  # GET /contrats/1/edit
  def edit
  end

  # POST /contrats
  # POST /contrats.json
  def create
    @contratcdd = Contratcdd.new(contratcdd_params)
    @contratcdd.employee = Employee.find(params[:employee_id])


    respond_to do |format|
      if @contratcdd.save
        format.html { redirect_to [@employee, @contratcdd], notice: 'Contrat was successfully created.' }
        format.json { render :show, status: :created, location: @contratcdd }
      else
        format.html { render :new }
        format.json { render json: @contratcdd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrats/1
  # PATCH/PUT /contrats/1.json
  def update
    respond_to do |format|
      if @contratcdd.update(contratcdd_params)
        format.html { redirect_to @contratcdd, notice: 'Contrat was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratcdd }
      else
        format.html { render :edit }
        format.json { render json: @contratcdd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrats/1
  # DELETE /contrats/1.json
  def destroy
    @contratcdd.destroy
    respond_to do |format|
      format.html { redirect_to contratcdds_url, notice: 'Contrat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratcdd
      @contratcdd = Contratcdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratcdd_params
      params.require(:contratcdd).permit(:debut, :fin, :poste, :remuneration, :video, :heurehebdo,
        :periodeessai)
    end

end
