Ext.define('Base.store.Event', {
	
	extend : 'Ext.data.Store',
	
	requires : 'Base.model.Event',
	
	model : 'Base.model.Event',
	
	autoLoad : false,

	remoteFilter : true,
	
	remoteSort : true,
	
	pageSize : 30,
	

	
	proxy : {
		type : 'rest',
		url : 'events',
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