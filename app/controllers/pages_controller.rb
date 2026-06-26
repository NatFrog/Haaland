class PagesController < ApplicationController
  def home
    @photos = Photo.recent.with_attached_image.limit(6)
    @posts = Post.recent.limit(5)
  end
end
