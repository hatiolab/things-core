Ext.define('Base.view.trip.TripItem', {
	
	extend : 'Ext.tab.Panel',
	
	requires : [ 'Base.view.trip.TripForm'],
	
	mixins : { spotlink : 'Frx.mixin.view.SpotLink' },
	
	xtype : 'base_trip_item',
	
	title : T('menu.Trip'),
	
	items : [ 
		{ xtype : 'base_trip_form' }
	]
});