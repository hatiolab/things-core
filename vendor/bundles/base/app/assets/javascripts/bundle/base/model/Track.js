Ext.define('Base.model.Track', {
    
	extend : 'Ext.data.Model',
    
	fields : [
		{ name : 'id', type : 'string' },
		{ name : 'cid', type : 'string' },
		{ name : 'fid', type : 'string' },
		{ name : 'fvr', type : 'string' },
		{ name : 'tid', type : 'string' },
		{ name : 'did', type : 'string' },
		{ name : 'stm', type : 'integer' },
		{ name : 'ttm', type : 'integer' },
		{ name : 'ctm', type : 'integer' },
		{ name : 'kct', type : 'integer' },
		{ name : 'vlc', type : 'float' },
		{ name : 'a_vlc', type : 'float' },
		{ name : 'dst', type : 'float' },
		{ name : 'lat', type : 'float' },
		{ name : 'lng', type : 'float' },
		{ name : 'p_lat', type : 'float' },
		{ name : 'p_lng', type : 'float' },
		{ name : 'gx', type : 'float' },
		{ name : 'gy', type : 'float' },
		{ name : 'gz', type : 'float' },
		{ name : 'f_img', type : 'string' },
		{ name : 'r_img', type : 'string' },
		{ name : '_cud_flag_', type : 'string' }
	],

	validations : [
		{ type : 'presence', field : 'cid' },
		{ type : 'length', field : 'cid', max : 16 },
		{ type : 'presence', field : 'fid' },
		{ type : 'length', field : 'fid', max : 16 },
		{ type : 'presence', field : 'fvr' },
		{ type : 'length', field : 'fvr', max : 16 },
		{ type : 'presence', field : 'tid' },
		{ type : 'length', field : 'tid', max : 16 },
		{ type : 'presence', field : 'did' },
		{ type : 'length', field : 'did', max : 16 },
		{ type : 'presence', field : 'kct' },
		{ type : 'presence', field : 'lat' },
		{ type : 'presence', field : 'lng' },
		{ type : 'presence', field : 'gx' },
		{ type : 'presence', field : 'gy' },
		{ type : 'presence', field : 'gz' },
		{ type : 'length', field : 'f_img', max : 255 },
		{ type : 'length', field : 'r_img', max : 255 },
	],
	
  	proxy : {
		type : 'rest',
		url : 'tracks',
		format : 'json',
	    reader : {
			type : 'json'
        },
        writer : {
			type : 'json',
			root : 'track'
        }
	}
});