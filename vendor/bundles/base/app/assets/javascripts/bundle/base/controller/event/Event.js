/**
 * Event controller
 */
Ext.define('Base.controller.event.Event', {
	
	extend : 'Frx.controller.ListController',
	
	requires : [ 
		'Base.model.Event', 
		'Base.store.Event', 
		'Base.view.event.Event',
		'Base.view.attachment.AttachmentMoviePopup'
	],
	
	models : ['Base.model.Event'],
			
	stores : ['Base.store.Event'],
	
	views : ['Base.view.event.Event'],
		
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_event' : this.EntryPoint(),
			'base_event #goto_item' : {
				click : this.onGotoItem
			},
			'base_event #vdo' : {
				click : this.onPlayTotalMovie
			},
			'base_event #f_vdo' : {
				click : this.onPlayFrontMovie
			},
			'base_event #r_vdo' : {
				click : this.onPlayRearMovie
			},
			'base_event #ado' : {
				click : this.onPlaySound
			},
			'base_attachment_movie_popup' : {
				paramschange : this.onMoviePopupParamsChange
			},
			'base_attachment_movie_popup button' : {
				click : this.onPopupClose
			}
		});
	},
	
	onPlaySound : function(grid, item, rowIndex, colIndex, e, record) {
		HF.msg.alert('Construction');
	},
	
	onPlayTotalMovie : function(grid, item, rowIndex, colIndex, e, record) {
		this.onPlayMovie('vdo', record);
	},
	
	onPlayFrontMovie : function(grid, item, rowIndex, colIndex, e, record) {
		this.onPlayMovie('f_vdo', record);
	},
	
	onPlayRearMovie : function(grid, item, rowIndex, colIndex, e, record) {
		this.onPlayMovie('r_vdo', record);
	},
	
	onPlayMovie : function(dataIndex, record) {
		var movPath = record.get(dataIndex);
		if(!movPath || movPath == '' || movPath.length < 10) {
			return;
		}
		
		var movPathArr = movPath.split('/');
		movPathArr.shift();
		var pathStr = movPathArr.join('/');
		var urlStr = CONTENT_BASE_URL + pathStr;
		var showData = {
			path : urlStr,
			mimetype : 'video/mp4'
		};
		
		HF.popup('Base.view.attachment.AttachmentMoviePopup', showData, {});
	},
	
	onMoviePopupParamsChange : function(popup, params) {
		popup.setRecord(params);
	},
	
	onPopupClose : function(button, event) {
		button.up(' base_attachment_movie_popup').close();
	}

});