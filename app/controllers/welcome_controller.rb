class WelcomeController < ApplicationController
  def index
    flash[:notice]= "敬请期待！"
  end

  def home

  end

end
