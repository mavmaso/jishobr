class KanjisController < ApplicationController
  def index
    @kanjis = Kanji.all
  end

  def show
    @kanji = Kanji.find(params[:id])
  end

  def new
    @kanji = Kanji.new
  end

  def create 
    @kanji = Kanji.new(kanji_params)
    if @kanji.save
      redirect_to @kanji, notice: 'Adicionado com sucesso'
    else
      flash[:alert] = 'Não pode ser enviada'
      render :new
    end
  end

  def edit 
    @kanji = Kanji.find(params[:id])
  end

  def update
    @kanji = Kanji.find(params[:id])
    if @kanji.update(kanji_params)
      redirect_to @kanji, notice: 'Editado com sucesso'
    else
      flash[:alert] = 'Não pode ser enviada'
      render :new
    end
  end

  def destroy
    @kanji = Kanji.find(params[:id])
    @kanji.destroy
  
    redirect_to kanjis_path, notice: 'Apagado com sucesso'
  end

  private

  def search_query
    params[:queri]
  end

  def kanji_params
    params.require(:kanji)
          .permit(:title, :radical, :most_used, :strike, :kun, :eg, :jlpt_id,
                  :pt, :onyomi)
  end

end
