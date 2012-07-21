class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
    @new_url = Url.new
  end

  def edit
  end

  def update
  end

  def delete
  end

  def create
    @url = Url.create(params[:url])
    @url.shorten
    redirect_to urls_path
  end

  def show
    @url = Url.find(params[:id])
  end

  def redirect_me
    url_info = Url.find_by_short_url(params[:short_url])
    redirect_to url_info.long_url
  end

end
