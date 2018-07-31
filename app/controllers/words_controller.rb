class WordsController < ApplicationController
  def index
    @words = WordService.search(search_query)
    if @words.empty?
      flash[:error] = 'Não foi encontrado nada'
      redirect_to root_path
    end
  end

  def show; end

  private

  def search_query
    params[:query]
  end
end