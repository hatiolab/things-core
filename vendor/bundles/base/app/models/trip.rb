class Trip

  include Mongoid::Document
  
  store_in collection: "Trips"

  field :id, type: String
  field :cid, type: String
  field :fid, type: String
  field :fvr, type: String
  field :tid, type: String
  field :did, type: String
  field :ttm, type: String
  field :stm, type: String
  field :ctm, type: String
  field :sts, type: String
  field :kct, type: Integer
  field :l_kct, type: Integer
  field :s_lat, type: Float
  field :s_lng, type: Float
  field :lat, type: Float
  field :lng, type: Float
  field :e_lat, type: Float
  field :e_lng, type: Float
  field :p_lat, type: Float
  field :p_lng, type: Float
	field :c_idl, type: Integer
	field :c_low, type: Integer
	field :c_nml, type: Integer
	field :c_hgh, type: Integer
	field :c_ovr, type: Integer
end
