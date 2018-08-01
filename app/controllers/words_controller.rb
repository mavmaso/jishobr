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

  private

  def search_query
    params[:query]
  end
end
