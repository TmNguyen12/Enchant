class StaticPagesController < ApplicationController
  def root
    render plain: "Welcome to Enchant"
  end 
end
