Ext.define('Base.view.event.EventItem', {
	
	extend : 'Ext.tab.Panel',
	
	requires : [ 'Base.view.event.EventForm'],
	
	mixins : { spotlink : 'Frx.mixin.view.SpotLink' },
	
	xtype : 'base_event_item',
	
	title : T('menu.Event'),
	
	items : [ 
		{ xtype : 'base_event_form' }
	]
});