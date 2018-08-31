class WordTypesController < ApplicationController
  def destroy
    @word_type = WordType.find(params[:id])
    @word_type.destroy
  
    redirect_to jlpts_path, notice: 'Apagado com sucesso'
  end
end