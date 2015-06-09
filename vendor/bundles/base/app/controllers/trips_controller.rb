class TripsController < ActionController::Base
  
public
  def index
    skip = (params[:page].to_i - 1) * params[:limit].to_i
    @collection = Trip.order('id desc').skip(skip).limit(params[:limit].to_i)
    @total_count = Trip.count
    
    respond_to do |format|
      format.xml { render :xml => {:items => @collection, :total => @total_count, :success => true} } 
      format.json { render :json => {:items => @collection, :total => @total_count, :success => true} }
    end
  end
  
private
  def resource_params
    [ params.require(:trip).permit(:cid,:fid,:fvr,:did,:s_lat,:s_lng,:lat,:lng,:e_lat,:e_lng,:kct,:l_kct,:stm,:utm,:etm,:sts,:c_idl,:c_low,:c_nml,:c_hgh,:c_ovr) ]
  end
end
