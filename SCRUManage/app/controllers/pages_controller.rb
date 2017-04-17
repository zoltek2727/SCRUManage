class PagesController < ApplicationController
before_filter :authenticate_user!


    def show
        render template: "pages/#{params[:page]}"


    end
  end  