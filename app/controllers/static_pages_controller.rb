class StaticPagesController < ApplicationController
  def main
    render 'home'
  end

  def help
    render 'help'
  end

  def about
    render 'about'
  end

  def contact
    render 'contact'
  end

end
