class WordsController < ApplicationController
  def index
    @words = WordService.search(search_query)
    if @words.empty?
      flash[:error] = 'Não foi encontrado nada'
      redirect_to root_path
    end
  end

  def show 
    @word = Word.find(params[:id])
  end

  private

  def search_query
    params[:query]
  end
end