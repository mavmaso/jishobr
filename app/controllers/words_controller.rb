class WordsController < ApplicationController
  def index
    @words = WordService.search(search_query)
    return unless @words.empty?
    flash[:error] = 'Não foi encontrado nada'
    redirect_to root_path
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to @word, notice: 'Adicionado com sucesso'
    else
      flash[:alert] = 'Não pode ser enviada'
      render :new
    end
  end

  private

  def search_query
    params[:query]
  end

  def word_params
    params.require(:word)
          .permit(:romaji, :pt, :kana, :kanji, :obs, :word_type_id, :jlpt_id)
  end
end
