Ext.define('Base.store.Fleet', {
	
	extend : 'Ext.data.Store',
	
	requires : 'Base.model.Fleet',
	
	model : 'Base.model.Fleet',
	
	autoLoad : false,

	remoteFilter : true,
	
	remoteSort : true,
	
	pageSize : 30,
	

	
	proxy : {
		type : 'rest',
		url : 'fleets',
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