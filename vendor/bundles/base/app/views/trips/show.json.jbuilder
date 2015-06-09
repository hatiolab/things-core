json.(@trip, :id,:cid,:fid,:fvr,:did,:s_lat,:s_lng,:lat,:lng,:e_lat,:e_lng,:kct,:l_kct,:stm,:utm,:etm,:sts,:c_idl,:c_low,:c_nml,:c_hgh,:c_ovr)

json.creator @trip.creator, :id, :name if @trip.creator
json.updater @trip.updater, :id, :name if @trip.updater