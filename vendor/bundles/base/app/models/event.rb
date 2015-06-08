class Event
  
  include Mongoid::Document
  
  store_in collection: "Events"
  
  field :id, type: String
  field :cid, type: String
  field :fid, type: String
  field :fvr, type: String
  field :tid, type: String
  field :did, type: String
  field :etm, type: String
  field :stm, type: String
  field :ctm, type: String
  field :typ, type: String
  field :svr, type: String
  field :kct, type: Integer
  field :lat, type: Float
  field :lng, type: Float
  field :gx, type: Float
  field :gy, type: Float
  field :gz, type: Float
	field :vlc, type: Float
	field :dst, type: Float
  field :p_lat, type: Float
  field :p_lng, type: Float
  field :vdo, type: String
  field :f_vdo, type: String
  field :r_vdo, type: String
  field :ado, type: String


end
