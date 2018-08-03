class KanjisController < ApplicationController
  def index
    @kanjis = KanjiService.search(search_query)
    return unless @kanjis.empty?
    flash[:error] = 'Não foi encontrado nada'
    redirect_to root_path
  end

  def show
    @kanji = Kanji.find(params[:id])
  end

  private

  def search_query
    params[:queri]
  end
end
