class SitemapController < ApplicationController
  skip_before_action :authenticate_user!

  def index

    @pages = ['']

    @announces = Announce.all

    respond_to do |format|
      format.xml
    end
  end

end