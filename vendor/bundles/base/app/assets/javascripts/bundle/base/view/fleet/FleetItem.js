Ext.define('Base.view.fleet.FleetItem', {
	
	extend : 'Ext.tab.Panel',
	
	requires : [ 'Base.view.fleet.FleetForm'],
	
	mixins : { spotlink : 'Frx.mixin.view.SpotLink' },
	
	xtype : 'base_fleet_item',
	
	title : T('menu.Fleet'),
	
	items : [ 
		{ xtype : 'base_fleet_form' }
	]
});