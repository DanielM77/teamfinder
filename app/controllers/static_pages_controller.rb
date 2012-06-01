class StaticPagesController < ApplicationController
  def help
  end

  def about
  end
  def index
    if      user_signed_in?
      redirect_to market_index_path


    end
  end
end
