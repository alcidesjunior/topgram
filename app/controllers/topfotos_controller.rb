class TopfotosController < ApplicationController
  before_action :set_topfoto, only: [:show, :edit, :update, :destroy]

  # GET /topfotos
  # GET /topfotos.json
  def index
    @topfotos = Topfoto.all.order('id DESC')
    @topfoto = Topfoto.new
  end

  # GET /topfotos/1
  # GET /topfotos/1.json
  def show
  end

  # GET /topfotos/new
  def new
    @topfoto = Topfoto.new
  end

  # GET /topfotos/1/edit
  def edit
  end

  # POST /topfotos
  # POST /topfotos.json
  def create
    @topfoto = Topfoto.new(topfoto_params)

    respond_to do |format|
      if @topfoto.save
        format.html { redirect_to '/', notice: 'Post adicionado' }
        format.json { render :show, status: :created, location: @topfoto }
      else
        format.html { render :new }
        format.json { render json: @topfoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topfotos/1
  # PATCH/PUT /topfotos/1.json
  def update
    respond_to do |format|
      if @topfoto.update(topfoto_params)
        format.html { redirect_to @topfoto, notice: 'Post atualizado' }
        format.json { render :show, status: :ok, location: @topfoto }
      else
        format.html { render :edit }
        format.json { render json: @topfoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topfotos/1
  # DELETE /topfotos/1.json
  def destroy
    @topfoto.destroy
    respond_to do |format|
      format.html { redirect_to topfotos_url, notice: 'Post deletado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topfoto
      @topfoto = Topfoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topfoto_params
      params.require(:topfoto).permit(:descricao, :foto)
    end
end
