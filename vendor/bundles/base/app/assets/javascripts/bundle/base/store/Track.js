Ext.define('Base.store.Track', {
	
	extend : 'Ext.data.Store',
	
	requires : 'Base.model.Track',
	
	model : 'Base.model.Track',
	
	autoLoad : false,

	remoteFilter : true,
	
	remoteSort : true,
	
	pageSize : 30,
	

	
	proxy : {
		type : 'rest',
		url : 'tracks',
		format : 'json',
	    reader : {
			type : 'json',
			root : 'items',
			successProperty : 'success',
			totalProperty : 'total'
        },
        writer : {
			type : 'json'
        }
	}
	
});