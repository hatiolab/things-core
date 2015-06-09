class EventsController < ActionController::Base
  
public
  def index
    skip = (params[:page].to_i - 1) * params[:limit].to_i
    @collection = Event.order('id desc').skip(skip).order_by(:id => 'desc').limit(params[:limit].to_i)
    @total_count = Event.count
    
    respond_to do |format|
      format.xml { render :xml => {:items => @collection, :total => @total_count, :success => true} } 
      format.json { render :json => {:items => @collection, :total => @total_count, :success => true} }
    end
  end
  
private
  def resource_params
    [ params.require(:event).permit(:cid,:fid,:fvr,:did,:tid,:stm,:etm,:ctm,:kct,:typ,:vlc,:svr,:lat,:lng,:gx,:gy,:gz,:vdo,:f_vdo,:r_vdo,:ado) ]
  end
end
