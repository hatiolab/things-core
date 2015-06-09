class TracksController < ActionController::Base
  
  public
  def index
    skip = (params[:page].to_i - 1) * params[:limit].to_i
    @collection = Track.order('id desc').skip(skip).limit(params[:limit].to_i)
    @total_count = Track.count
    
    respond_to do |format|
      format.xml { render :xml => {:items => @collection, :total => @total_count, :success => true} } 
      format.json { render :json => {:items => @collection, :total => @total_count, :success => true} }
    end
  end
  
private
  def resource_params
    [ params.require(:track).permit(:cid,:fid,:fvr,:tid,:did,:stm,:ttm,:ctm,:kct,:vlc,:a_vlc,:dst,:lat,:lng,:p_lat,:p_lng,:gx,:gy,:gz,:f_img,:r_img) ]
  end
end
