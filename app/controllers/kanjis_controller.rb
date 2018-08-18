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

  def edit; end

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
