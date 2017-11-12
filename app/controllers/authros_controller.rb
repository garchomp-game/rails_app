class AuthrosController < ApplicationController
  before_action :set_authro, only: [:show, :edit, :update, :destroy]

  # GET /authros
  # GET /authros.json
  def index
    @authros = Authro.all
  end

  # GET /authros/1
  # GET /authros/1.json
  def show
  end

  # GET /authros/new
  def new
    @authro = Authro.new
  end

  # GET /authros/1/edit
  def edit
  end

  # POST /authros
  # POST /authros.json
  def create
    @authro = Authro.new(authro_params)

    respond_to do |format|
      if @authro.save
        format.html { redirect_to @authro, notice: 'Authro was successfully created.' }
        format.json { render :show, status: :created, location: @authro }
      else
        format.html { render :new }
        format.json { render json: @authro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authros/1
  # PATCH/PUT /authros/1.json
  def update
    respond_to do |format|
      if @authro.update(authro_params)
        format.html { redirect_to @authro, notice: 'Authro was successfully updated.' }
        format.json { render :show, status: :ok, location: @authro }
      else
        format.html { render :edit }
        format.json { render json: @authro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authros/1
  # DELETE /authros/1.json
  def destroy
    @authro.destroy
    respond_to do |format|
      format.html { redirect_to authros_url, notice: 'Authro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authro
      @authro = Authro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authro_params
      params.require(:authro).permit(:user_id, :name, :birth, :address, :ctype, :photo)
    end
end
