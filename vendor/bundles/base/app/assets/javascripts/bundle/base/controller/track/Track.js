/**
 * Track controller
 */
Ext.define('Base.controller.track.Track', {
	
	extend : 'Frx.controller.ListController',
	
	requires : [ 
		'Base.model.Track', 
		'Base.store.Track', 
		'Base.view.track.Track' 
	],
	
	models : ['Base.model.Track'],
			
	stores : ['Base.store.Track'],
	
	views : ['Base.view.track.Track'],
		
	init : function() {
		this.callParent(arguments);
		
		this.control({
			'base_track' : this.EntryPoint(),
			'base_track #goto_item' : {
				click : this.onGotoItem
			},
			'base_track #fimgshow' : {
				click : this.onFrontImgSlideShow
			},
			'base_track #rimgshow' : {
				click : this.onRearImgSlideShow
			}
		});
	},
	
	onFrontImgSlideShow : function(grid, item, rowIndex, colIndex, e, record) {
		this.onSlideShow('f_img', record);
	},
	
	onRearImgSlideShow : function(grid, item, rowIndex, colIndex, e, record) {
		this.onSlideShow('f_img', record);
	},
	
	onSlideShow : function(dataIndex, record) {
		var imgPath = record.get(dataIndex);
		if(!imgPath || imgPath == '' || imgPath.length < 10) {
			return;
		}
		
		var imgPathArr = imgPath.split('/');
		imgPathArr.shift();
		var pathStr = imgPathArr.join('/');
		var urlStr = CONTENT_BASE_URL + pathStr;
		var showDataList = [{
			path : pathStr,
			url : urlStr,
			mimetype : 'image',
			
		}];
		
		HF.slideshow(showDataList);
	}

});