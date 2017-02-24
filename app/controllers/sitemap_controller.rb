class SitemapController < ApplicationController
  def index
  	@posts = Post.all

  	respond_to do |format|
     format.xml
    end
  end
end