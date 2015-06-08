json.(@event, :id,:cid,:fid,:fvr,:did,:tid,:stm,:etm,:ctm,:kct,:typ,:vlc,:svr,:lat,:lng,:gx,:gy,:gz,:vdo,:f_vdo,:r_vdo,:ado)

json.creator @event.creator, :id, :name if @event.creator
json.updater @event.updater, :id, :name if @event.updater