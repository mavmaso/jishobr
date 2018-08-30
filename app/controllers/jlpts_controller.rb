class JlptsController < ApplicationController
  def index
    @jlpts = Jlpt.all
  end
end
