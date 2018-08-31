class JlptsController < ApplicationController
  def index
    @jlpts = Jlpt.all
    @word_types = WordType.all
  end

  def destroy
    @jlpt = Jlpt.find(params[:id])
    @jlpt.destroy
  
    redirect_to jlpts_path, notice: 'Apagado com sucesso'
  end

  def edit; end
end
