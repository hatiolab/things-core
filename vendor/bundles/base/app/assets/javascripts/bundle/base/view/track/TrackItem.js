Ext.define('Base.view.track.TrackItem', {
	
	extend : 'Ext.tab.Panel',
	
	requires : [ 'Base.view.track.TrackForm'],
	
	mixins : { spotlink : 'Frx.mixin.view.SpotLink' },
	
	xtype : 'base_track_item',
	
	title : T('menu.Track'),
	
	items : [ 
		{ xtype : 'base_track_form' }
	]
});