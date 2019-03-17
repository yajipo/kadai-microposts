class LikesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = "お気に入りに追加しました。"
    redirect_back(fallback_location: root_url)
  end
  
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = "お気に入りを削除しました。"
    redirect_back(fallback_location: root_url)
  end
end
