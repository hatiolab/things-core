json.(@track, :id,:cid,:fid,:fvr,:tid,:did,:stm,:ttm,:ctm,:kct,:vlc,:a_vlc,:dst,:lat,:lng,:p_lat,:p_lng,:gx,:gy,:gz,:f_img,:r_img,:domain_id)

json.creator @track.creator, :id, :name if @track.creator
json.updater @track.updater, :id, :name if @track.updater