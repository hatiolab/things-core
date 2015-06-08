json.items do |json|
	json.array!(@collection) do |track|
json.(track, :id,:cid,:fid,:fvr,:tid,:did,:stm,:ttm,:ctm,:kct,:vlc,:a_vlc,:dst,:lat,:lng,:p_lat,:p_lng,:gx,:gy,:gz,:f_img,:r_img,:domain_id)
	end
end
json.total @total_count
json.success true
