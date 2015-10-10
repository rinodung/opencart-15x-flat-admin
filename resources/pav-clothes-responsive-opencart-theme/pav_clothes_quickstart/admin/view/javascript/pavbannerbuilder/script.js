  /**
  * $Desc
  *
  * @version    $Id$
  * @package    wpbase
  * @author     WPOpal  Team <wpopal@gmail.com, support@wpopal.com>
  * @copyright  Copyright (C) 2014 wpopal.com. All Rights Reserved.
  * @license    GNU/GPL v2 or later http://www.gnu.org/licenses/gpl-2.0.html
  * @addition this license does not allow theme provider using in themes to sell on marketplaces.
  * 
  * @website  http://www.wpopal.com
  * @support  http://www.wpopal.com/support/forum.html
  */
 
 /**
  * $Desc
  *
  * @version    $Id$
  * @package    wpbase
  * @author     WPOpal  Team <wpopal@gmail.com, support@wpopal.com>
  * @copyright  Copyright (C) 2014 wpopal.com. All Rights Reserved.
  * @license    GNU/GPL v2 or later http://www.gnu.org/licenses/gpl-2.0.html
  * @addition this license does not allow theme provider using in themes to sell on marketplaces.
  * 
  * @website  http://www.wpopal.com
  * @support  http://www.wpopal.com/support/forum.html
  */
/* $.expr[":"].contains = $.expr.createPseudo(function(arg) {
    return function( elem ) {
        return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
    };

});
			
*/
var  current_id_tab = 1;
(function($) {
	$.fn.WPO_Modal = function(opts) {
		// default configuration
		var config = $.extend({}, {
			confirmdel:'Are you sure to delete?',
			id:'wpo-modalbox'
		}, opts);
		var $wpolayout = null;
  
	 
		this.each(function() {  
			 
			$wpolayout = $(this);		 	
 

		});
	 
		return this;
	};
	
})(jQuery);


/**
 * WPO_Widget Plugin
 */
(function($) {
	$.fn.WPO_Widget = function(opts) {
		// default configuration
		var config = $.extend({}, {
			gutter:30,
			urlwidgets:  '',
			mdwidgets:  'wpo-widgetform',
			modaltitle: 'Widget Setting',
			backtolist:'Back to list',
			savetext : 'Save'
		}, opts);
		var $col = null;

 		var $this=this;

 		var $queeWidgetID = '';
 		function injectWrapperWidgets( id, buttons ){ 
			if( !$( "#"+id).length ) {
				var modal = $( '<div class="modal " style="display:none" id="'+id+'"></div>');
				var html = ' <div class="modal-inner" >';

				html += '  <div class="modal-dialog modal-lg">'; 
				html += ' 	    <div class="modal-content">'; 
				html += '	      <div class="modal-header clearfix">'; 
				html += '	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'; 
				html += '	        <h4 class="modal-title pull-left">'+config.modaltitle+'</h4>'; 

				html += '	      <div class="group-buttons showinform pull-right" style="padding-right:10px">'; 
				html += '	        <button type="button" class="btn btn-info backtolist">'+config.backtolist+'</button>'; 
				html += '	        <button type="button" class="btn btn-primary savechange ">'+config.savetext+'</button>';
				html += '	      </div>'; 


				html += '	      </div>'; 
				html += '	      <div class="modal-body">';




				html += '         <div class="wpo-widgetslist"></div><div class="wpo-widgetform"></div>';  
				html += '	      </div>'; 
		 
				html += '	      <div class="modal-footer">'; 
				html += '	        <button type="button" class="btn btn-info backtolist pull-left showinform">'+config.backtolist+'</button>'; 
				html += '	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'; 
				html += '	        <button type="button" class="btn btn-primary savechange showinform">Save</button>';
				html += '	      </div>'; 
			 
				html += '	    </div> '; 
				html += '	  </div> '; 
				html += '	</div>'; 
				modal.html( html );

				$('#content').append( modal );

				
			}		
		}

 		this.showWigetsList = function ( col ){
 			if( $('#'+config.mdwidgets ).find( ".wpo-widgetslist" ).length<=0 ){
			 	this.loadWidgets( true );
			}else {
				$( '#'+config.mdwidgets ).modal('toggle');	
				$('#'+config.mdwidgets + ' ' +'.modal-body .wpo-widgetslist').show();
				$('#'+config.mdwidgets + ' ' +'.modal-body .wpo-widgetform').hide();
			}	
 			
 		}
 		
 		this.loadWidgets = function( isshow, callback, datajson ){

 	
 			injectWrapperWidgets( config.mdwidgets, false );
 			$('#'+config.mdwidgets+" .showinform").hide();
 			$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetform' ).hide();

 			$.ajax({
				url:  config.urlwidgets,
				data:{
					rand:Math.random(),
					controller : config.controller,
    				action : 'listwidgets',
 					ajax : true,
					id_tab : current_id_tab
				},
				type:'post'
			}).done(function( html ) {
		 		 
		 		 $('#'+config.mdwidgets + ' ' +'.modal-body .wpo-widgetslist').html( html );
		 		  $('#'+config.mdwidgets + ' ' +'.modal-body .wpo-widgetslist').show();
		 		 if( isshow ){ 
				 	$('#'+config.mdwidgets).modal('toggle');
				 }
				 $this.widgetsAction(  $('#'+config.mdwidgets + ' .wpo-widgets' ) );

				 if(typeof callback == "function"){  
				    callback.call( this, datajson  );
				 }
				 widgetsFillter();

			});

			$('#'+config.mdwidgets+" .backtolist").click( function(){
				$('#'+config.mdwidgets + ' ' +'.modal-body .wpo-widgetslist').show();
				$('#'+config.mdwidgets + ' ' +'.modal-body .wpo-widgetform').hide();
				$('#'+config.mdwidgets+" .showinform").hide();
			} );
 		}


 		this.editWidget = function( widget ){
 			 if( widget.data('wgcfg').wkey ){  
 			 	$('.ajaxloader').remove();
 			 	$(widget).append('<div class="ajaxloader"></div>');

 			 	var wkey = widget.data('wgcfg').wkey;
 			 	var data = $( "#wpowidget"+ widget.data('wgcfg').wkey  ).val();

 			 	var wtype = widget.data('wgcfg').wtype ;
 			 	$.ajax({
					url:  config.urlwidget,
					data:'rand='+Math.random()+'&wtype='+wtype+'&wkey='+wkey+'&edit=1&data='+data+"&controller="+config.controller+"&action=editwidget&ajax=true",
					type:'POST'
				}).done(function( html ) {  
			 		$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetform' ).html( html );
			 		$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetform' ).show();
			 		$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetslist' ).hide();
			 		$('#'+config.mdwidgets+" .showinform").show();
			 		$( '#'+config.mdwidgets ).modal('toggle');	
		 			$('.ajaxloader',widget).remove();
				}); 
 			 }
 		}

 	 

 		this.cloneWidget = function( widget ){
 			var data = widget.data( 'wgcfg' );
 			var target = new WPO_DataWidget();
 			for( var k in target ){   
			 	target[k] = data[k];
			}

			target.wkey = this.getWidgetKey();

 
			this.createWidgetButton( widget.parent().parent(), $("#wpo_"+target.wtype) , target );
			this.cloneFormData( target.wkey, data.wkey );	

 		}

 		this.getWidgetKey = function(){
 			var d = new Date();
			 return d.getTime();
 		}

 		this.createWidgetButton = function( col, widget , data ){
 				var name = '';
				if( data !=null ){
					var wkey = data.wkey;
					var dw = data;
					var name = data.name;
				}else {
	 
					var wkey = this.getWidgetKey();

					var dw = new WPO_DataWidget();
					dw.wkey = wkey;
					dw.wtype = $(widget).data('widget');

				}
				var $w = $( '<div class="wpo-ijwidget" id="widget'+dw.wkey+'"></div>' );
				
		 
				$w.data( 'wgcfg', dw );
			 	
				$w.html(  $(widget).html() );

				$w.append('<div class="wpo-wcopy ptstooltip"  data-placement="top" title="Duplicate"></div>');
				$w.append('<div class="wpo-wedit ptstooltip"  data-placement="top" title="Edit"></div>');
				$w.append('<div class="wpo-wdelete ptstooltip"  data-placement="top" title="Delete"></div>');
				$w.append( '<textarea class="wpo-cfginput" id="wpowidget'+wkey+'" name="wpowidget['+wkey+'][config]"></textarea>' );
				// alert(  $w.name );
				if( name ){
					$(".widget-desc",$w).html( '<div class="widget-name">'+name+'</div>' );
				}
				$( ".wpo-wcopy", $w ).click( function(){   
					$this.cloneWidget(  $w, col );
				} );

				$( ".wpo-wedit", $w ).click( function(){  
					$this.editWidget( $w );
				} );

				$( ".wpo-wdelete", $w ).click( function(){  
					if( confirm(config.confirmdel) ){
						$w.remove();
					}
					
				} );

				col.find( ".wpo-content" ).append( $w );

				return wkey;

 		}

 		this.cloneFormData = function( ckey, rkey ){   
			$("#wpowidget"+ckey).val( $("#wpowidget"+rkey).val() );
 		}

 		this.loadWidgetByIds = function( ids ){
 			
 			$.each( ids, function(i, wkey){
 				$.ajax({
					url:  config.urlwidgetdata,
				 
					data:{
						rand:Math.random(),
						controller : config.controller,
	    				action : 'widgetdata',
	 					ajax : true,
						id_tab : current_id_tab,
						wkey:wkey
					},

					type:'POST'
				}).done(function( html ) {
			 	 	$("#wpowidget"+wkey).val( html );
				});
 			} );

 				 
 		}

 		this.widgetsAction = function( $wwidgets ){

 			$(".wpo-wg-button > div", $wwidgets ).click( function(){

				//  var wkey = $this.createWidgetButton( $(".wpo-col.active"), this ) ;
				$('#'+config.mdwidgets+" .ajaxloader").remove();
				$(this).append('<div class="ajaxloader"></div>');
 				$queeWidgetID = this;
 				//alert( $($queeWidgetID).parent().data('widget') );
 				$.ajax({
					url:  config.urlwidget,
					data: {
						wkey:'',
						rand:Math.random(),
						controller : config.controller,
	    				action : 'widgetform',
	    				wtype: $($queeWidgetID).data('widget'),
	 					ajax : true,
						id_tab : current_id_tab
					},
					type:'POST'
				}).done(function( html ) {
			 		$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetform' ).html( html );
			 		$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetform' ).show();
			 		$( '#'+config.mdwidgets + ' .modal-body .wpo-widgetslist' ).hide();

			 		$('#'+config.mdwidgets+" .showinform").show();
			 		$('#'+config.mdwidgets+" .ajaxloader").remove();
				}); 
 			} );
 		}

		 function widgetsFillter(){  

 

		 	$("#searchwidgets").keypress( function( event ){
			
				if ( event.which == 13 ) {
				    event.preventDefault();
				}
				var $this = this;
				setTimeout( function(){
			 		 if( $.trim($("#searchwidgets").val()) !="" ) {
						$(".wpo-wg-button").hide(); 
						$( "div.widget-title:contains("+$("#searchwidgets").val()+")" ).parent().parent().show();
					}else { 
					 	$(".wpo-wg-button").show();
					}

				 }, 300 );

			} );

		 	$( '.filter-option' ,"#filterbygroups").click( function(){
		 		$( '.filter-option' ,"#filterbygroups").removeClass( 'active' );
		 		$(this).addClass( 'active' );
		 		if( $(this).data('option') == 'all' ) {
		 			$(".wpo-wg-button").show();  
		 		}else {
		 			$(".wpo-wg-button").hide();  
		 			$('[data-group='+$(this).data('option')+']').show();
		 		}	
		 		return false; 
		 	} );

 		}

		this.each(function() {  
			injectWrapperWidgets( config.mdwidgets, false ); 

			$('#'+config.mdwidgets+" .savechange").click( function(){
				updateAllMessageForms();
				var k = $.trim($('[name=wkey]',$('#'+config.mdwidgets+" form") ).val()); 
 				 
				if( k == "" ){   
					var wkey = $this.createWidgetButton( $(".wpo-col.active"), $queeWidgetID  ) ;	
					$('[name=wkey]',$('#'+config.mdwidgets+" form") ).val( wkey ); 
					$queeWidgetID = '';
				} else {
					var wkey = k;
				}
				$($wpolayout).append('<div class="loading-setting"></div>');
				var p = "controller="+config.controller+"&action=savewidget&ajax=true&id_tab&"+current_id_tab;
				$.ajax({
					url:  config.urlwidget+"&action=save",
					data:$('#'+config.mdwidgets+" form").serialize()+"&wkey="+wkey+"&"+p,
					dataType:'json',
					type:'POST'
				}).done(function( widget ) {
					if( widget.wkey ){
						$("#wpowidget"+wkey).val(  widget.config );	
					}
	 				if( widget.name ){
	 					$("#wpowidget"+wkey).parent().find('.widget-desc').html( widget.name.substring(0, 100) );
	 					var data = $("#widget"+wkey).data('wgcfg');
	 					data.name = widget.name;
	 					$("#widget"+wkey).data('wgcfg', data);   
	 				}
	 				$(".loading-setting",$wpolayout).remove();
				}); 
				$('#'+config.mdwidgets).modal('toggle');
			} );
                        
                        
 			return this;
		});
                
                
		return this;
	};
	
})(jQuery);


var WPO_DataRow = function () {
    this.index   =  0;
    this.cls   = '';
    this.bgcolor = '';
    this.bgimage = '';
    this.fullwidth = 0;
    this.parallax = 0;
    this.sfxcls = '';
}

var WPO_DataCol = function () {
    this.index = 0;
    this.cls = '';
    this.sfxcls = '';
    this.bgcolor = '';
    this.bgimage = '';
    this.inrow = 0;
    this.lgcol = 4;
    this.mdcol = 4;
    this.smcol = 6;
    this.xscol = 12; 
	     
}

var WPO_DataWidget = function () {
    this.cls = '';
    this.wtype = '';
    this.wkey ='';
    this.name = '';
         
}

$(document).ready( function(){
      $('input.input-color').each( function(){
         var input = this;
             $(input).mColorPicker(); 
             
       });
} ); 
 

function reloadLanguage( langcls ){
     $('.switch-langs').hide();

      $('.'+langcls).show();

      $(".group-langs ul li").click( function(){
           $('.switch-langs').hide();
            $('.'+ $(this).data('lang') ).show();
      } );
}
 
 function updateAllMessageForms(){
       for (instance in CKEDITOR.instances) {
           CKEDITOR.instances[instance].updateElement();
       }
  }
 /**
  * $Desc
  *
  * @version    $Id$
  * @package    wpbase
  * @author     WPOpal  Team <wpopal@gmail.com, support@wpopal.com>
  * @copyright  Copyright (C) 2014 wpopal.com. All Rights Reserved.
  * @license    GNU/GPL v2 or later http://www.gnu.org/licenses/gpl-2.0.html
  * @addition this license does not allow theme provider using in themes to sell on marketplaces.
  * 
  * @website  http://www.wpopal.com
  * @support  http://www.wpopal.com/support/forum.html
  */

(function($) {
	/**
 	* WPO_Layout Plugin
 	*/

	$.fn.WPO_Layout = function( opts, datajson ) {
		
		/*
		 * default configuration
		 */
		var config = $.extend({}, {
			gutter	   :   30,
			coldwith   :   54,
			defaultcol :   3,
			col 	   :   12,
			confirmdel :   'Are you sure to delete?',
			urlwidgets :   'widgets.php',
			urlwidget  :   'form.php',
			urlwidgetdata: 'data.php',
			formsellector: '#frmsavealll',
			controller : 'AdminPtspagebuilderProfile'
		}, opts);

		/**
		 * store wrapper layout editor.
		 */
		var $wpolayout = null;

		/**
		 * store instances of WPO_Widget
		 */
		var $wpowidget = $("body").WPO_Widget( config );

		var $screenmode = 'large-screen';
		
		var $colkey = 'lgcol';

		/** 
		 * caculate total layout width based on column's width and gutter + number of columns 
		 */
		var layoutwidth = config.coldwith*config.col + ((config.col-1)*config.gutter);
	 	
	 	/**
	  	 *  preload widgets using for layout edtior and add some elements as suggest row to click add to new row.
	  	 */				
	  	function init(){ 
	  		$wpolayout.append('<div class="inner"></div>');
	  		$wpolayout.width( layoutwidth );
	  		addSuggestRow();
	  	};

	  		
	  	/**
	  	 * add new column element and append it before suggest column.
	  	 * 
	  	 * return Object col: jquery object of that column
	  	 */	
	  	function addColumn( scol, row ){
	  		$( ".lg-col", $wpolayout ).removeClass( "active" );	
	  		var col = $( '<div class="active lg-col wpo-col">\n\
                            <div class="inner clearfix"><div class="wpo-delete wpo-icon ptstooltip"  data-placement="top" title="Delete"></div>\n\
                            <div class="wpo-edit wpo-icon ptstooltip"  data-placement="top" title="Edit"></div>\n\
                            <div class="wpo-addrow wpo-icon ptstooltip"  data-placement="top" title="Add row"></div>\n\
                            <div class="wpo-addwidget wpo-icon ptstooltip"  data-placement="top" title="Add Widget"></div>\n\
                            <div class="wpo-content"></div></div></div>' );
	  		col.width( config.coldwith*3+2*config.gutter 	);
	  		col.insertBefore( scol );
	  		col.data( "colcfg", new WPO_DataCol() );

	  		bindingColEventS( col , row );		
	  		
	  		return col;
	  	}

	  	/* binding events for column */
	  	function bindingColEventS( col, row ){
	  		var maxWidth = layoutwidth; 
	  		col.resizable({
			    stop: function(event, ui) {  

				 	setTimeout( function(){
				 		var c =  Math.floor(config.col*col.width()/row.width())+1;
				 		maxWidth = row.width();
				 		if( c > 12 ){
				 			c = 12;
				 		}
						updateColsWidth(col,c);
					
						 
					 }, 200 );	
		 	
			    },
			     handles: 'e',
			     maxWidth:maxWidth+config.gutter,
			     minWidth:config.coldwith
			}); 
	  		col.click( function(event) {
	  			// $( ".wpo-edit", col ).click();
  				$( ".wpo-col", $wpolayout ).removeClass( "active" );	
	  			col.addClass( 'active' );
	  			$( "#col-builder" ).hide();
	  			// event.stopPropagation();
	  		} );
			$( ".wpo-delete" ,col).click( function(){
				if( confirm(config.confirmdel) ){
					col.remove();  
		 			recalculateColsWidth( row );
		 		}
			} );

			// set default values or element'data 
			$( ".wpo-edit", col ).click( function(event){   
	  			var cfg = col.data("colcfg") ; 
	  			for( var k in cfg ){   
	  				if( $("[name="+k+"]", "#col-builder") ) {
	  					$("[name="+k+"]", "#col-builder").val( cfg[k] ); 
	  				}
	  			}
	  			$( ".wpo-col", $wpolayout ).removeClass( "active" );	
	  			col.addClass( 'active' );
	  			
	  			var pos = $( ".wpo-edit", col ).offset();
	  			var l = pos.left;  
	  			$( "#col-builder" ).css( {top:pos.top-$( "#col-builder" ).height()/2, left:l} ).show();

	  			
	  			event.stopPropagation();
	  		} );

			$( ".wpo-addwidget", col ).click( function(){

			
			 	// $(".wpo-delete",banner).click( function(){ banner.remove(); alert('f'); } );
			 	createBannerWidget( col );
			  
			} );

			// bind sortable event to re-sort widgets inside.
			$( ".wpo-content", col ).sortable({
				connectWith: ".wpo-col .wpo-content",
				 placeholder: "ui-state-highlight-widget",
				 over:function(event, ui ){   ui.item.width(ui.placeholder.width() ) }
			}); 

			$( '.wpo-addrow', col ).click( function(){
				addRow( col.children( '.inner' ), true ); 
			} );	
	  	}

	  	function createBannerWidget( col, img , preview, ilink ){
	  			var rand =  Math.random().toString(36).substr(2);  
				var img = img != null ? img : "";
				var link = ilink != null ? ilink: "";
				if( preview !=null ){

				}else {
					preview = config.placeholder;
				}
				var html ='<a  id="thumb-image'+rand+'" data-toggle="image" class="img-thumbnail">';
				html +='<img src="'+preview+'" alt="" title="" data-placeholder="'+config.placeholder+'" /></a>';
				html += '<input type="hidden" class="imageurl" name="banners[banner][]" value="'+img+'" id="input-image'+rand+'" />';
				var input = '<p>Link: <input type="text" class="imagelink" name="banners[link][]" value="'+link+'" id="input-link-image'+rand+'" />';

				var banner = $('<div class="inject-banner wpo-ijwidget"></div>');
 			 	$(col).find(".wpo-content").append( banner );
			

				banner.html( "<div class=\"w-inner\">"+html+input+"</div>" );
			
			 	banner.append('<div class="wpo-wedit ptstooltip"  data-placement="top" title="Edit"></div><div class="wpo-wdelete ptstooltip"  data-placement="top" title="Delete"></div>');
			 	
			  	$(".wpo-wdelete",banner).click( function (){ banner.remove() } );
			  	 	$("input",banner).click( function (){  $(this).focus();  } );
				  	 
	  	}
	  	/* recaculate column width */
	  	function recalculateColsWidth( row ){
 	 	
			var childnum = $(row).children('.inner').children( ".wpo-col" ).length;
			var dcol = Math.floor( 12/childnum );
			var a = 12%childnum;

			$(row).children('.inner').children( ".wpo-col" ).each( function(i, col ) {
				if( a > 0 && (i == childnum-1) ){
		 			dcol = dcol+a;
				}
 				updateColsWidth( this, dcol );
	 		
			});
		 
		}

		function updateColsWidth( col, dcol ){  
			 
	     	$(col).css( {'width':dcol/config.col*100 +'%'} );  
 			var data =  $(col).data( 'colcfg' );
			data[$colkey] = dcol;
			$(col).data( 'colcfg', data );
		}

	  	function createColForm( idx, col ){

	  	}

	  	/**
	  	 * add new row element and append it before suggest row.
	  	 * 
	  	 * return Object col: jquery object of that column
	  	 */	
	  	function addRow( srow, sub ){

	  		var row = $( '<div class="wpo-row lg-row"><div class="wpo-tool"><div class="wpo-sortable ptstooltip"  data-placement="top" title="Sort"></div></div><div class="inner clearfix"></div></div>' );
	  		var edit = $('<div class="wpo-edit ptstooltip"  data-placement="top" title="Edit"></div>');
	  		var copy = $('<div class="wpo-copy ptstooltip"  data-placement="top" title="Duplicate"></div>');
	  		var del = $('<div class="wpo-delete ptstooltip"  data-placement="top" title="Delete"></div>');
	  		
	  		$(row).children(".wpo-tool").append(del).append(copy).append(edit);	
	  		
	  		bindingRowEvents( row , srow, sub );
	  		
			//row.insertBefore( srow );
			if( sub !=null && sub== true ){
				srow.append( row );	
				srow.addClass('hd-widgets-func');
				addSuggestColumn( row );
				row.addClass( 'active' );
			}else {
				$wpolayout.children('.inner').append( row );	
				addSuggestColumn( row );
				$wpolayout.children('.inner').children( ".wpo-row").removeClass( "active" );	
				row.addClass( 'active' );
			}
		
		
			row.data( "rowcfg", new WPO_DataRow() );

			return row;
	  	};

	  	/* clone data from orginal for new */
	  	function cloneData( data, target ){
			for( var k in target ){   
			 	target[k] = data[k];
			}
	  		return target;
	  	}

  		/* ROW PROCESS: add and create a setting form */	
	  	function bindingRowEvents( row , srow ){
	  		$(".wpo-tool .wpo-delete", row).click( function(){
	  			if( confirm(config.confirmdel) ){
	  				if( row.parent().children('.wpo-row').length<= 1 ){
	  					row.parent().removeClass( 'hd-widgets-func' );
	  				}
	  				
	  				row.remove();
	  			}
	  		} );

	  		$(".wpo-copy", row).click( function( event ){
	  			cloneLayoutInRow( row, srow );
	  		} );

	  		// set default values or element'data 
	  		$( ".wpo-edit", row ).click( function(event){ 
	  			var cfg = row.data("rowcfg") ; 
	  			for( var k in cfg ){
	  				$("[name="+k+"]", "#row-builder").val( cfg[k] ); 

	  				if( k.indexOf('color') != -1 ){
	  					if( cfg[k] ){ 
	  						$("[name="+k+"]", "#row-builder").css({'background-color':cfg[k]}); 
	  					}else{
	  						$("[name="+k+"]", "#row-builder").css({'background-color':'#FFFFFF'}); 	
	  					}
	  				}	
	  			}

	  			var pos = $( row ).offset(); 
	  			var l = pos.left;
	  			var ll = $(this).offset().left
  				$( "#row-builder" ).css( {top:pos.top-$( "#row-builder" ).height()/2, left:ll} ).show();

  				$(".wpo-row.active").removeClass( 'active' );
  				$(row).addClass( 'active' );
				 event.stopPropagation();
	  		} );

	  		row.click( function( event ){
	  			$( ".wpo-row", $wpolayout ).removeClass( "active" );
	  			row.addClass( "active" );
	  			$( "#row-builder" ).hide();
	  			event.preventDefault();

	  		} );

	  		row.delegate( ".sg-col", "click", function(){ 
	  			addColumn( $(this), row );
	  		 	recalculateColsWidth( row ); 
	  		} );	
	  		 
	  		// bind sortable for this to sort columns on current row and other rows.	
		 	$( row ).children('.inner').sortable({
				connectWith: ".wpo-row > .inner", 
				placeholder: "ui-state-highlightcol",
	 			update:function( event, ui ){  
	 			
	 			},
	 			
	 			remove:function(){  
	 			 	var trow = $(this).parent();
 			   		 recalculateColsWidth( trow );
	 			},
	 			start:function( event, ui ){
	 		 		$( '.ui-state-highlightcol', row ).width( $(ui.item).width() );
	 			},
	 			receive: function( event, ui ) {
	 			   	 var trow = $(this).parent();
 			   		 recalculateColsWidth( trow );
	 			},
	 			cancel: ".wpo-sortable, .add-col"
			});	 
		 	 		
	  	}
		
		function cloneLayoutInRow( row, sub, incol ){
			
			var cr = addRow( sub==true?incol.children( '.inner' ):$(".add-row",$wpolayout), sub );
			cr.data( 'rowcfg', cloneData(row.data( 'rowcfg'),new WPO_DataRow()) );
		 
			$(row).children('.inner').children( ".lg-col" ).each( function(){	
				var cc = addColumn( $(cr).children('.inner').children(".wpo-row.active .sg-col"), cr );
				 
  				 $(this).children('.inner').children('.wpo-content').children( '.wpo-ijwidget' ).each( function(){   
  				 	var rwd   = cloneData( $(this).data('wgcfg'), new WPO_DataWidget() );  
		  			rwd.wkey  = $wpowidget.getWidgetKey();
  				 	var cwkey = $wpowidget.createWidgetButton( cc, $("#wpo_"+rwd.wtype) , rwd );	
  				 	$wpowidget.cloneFormData( cwkey, $(this).data('wgcfg').wkey );	

  				} );
  		 		var rcd = $(this).data('colcfg'); 
  				cc.data( 'colcfg', cloneData(rcd,new WPO_DataCol()) );
  				
  				$(cc).css( {'width':(rcd.lgcol/config.col*100)+'%'} );  
  				if( $(this).children('.inner').children( '.wpo-row' ).length > 0 ){  

	  				$(this).children('.inner').children( '.wpo-row' ).each( function(){   
	  					cloneLayoutInRow( $(this), true, cc );
	  				});
  				}

			} );
	 	}

  		/**
	  	 * add suggest row using to click to this for adding new real row
	  	 */
	  	function addSuggestRow(){
	  		var srow = $(  '<div class="add-row sg-row"></div>' );
	  		$wpolayout.append( srow );
	  		srow.click( function(){
	  			addRow( this );
 				
	  		} );
	  	};

	  	/**
	  	 * add suggest column using to click to this for adding new real row
	  	 */
	  	function addSuggestColumn( row ){
	  		var scol = $(  '<div class="add-col sg-col ptstooltip"  data-placement="top" title="Add Column"></div>' );
	  		// scol.width( config.coldwith );
	  		$(row).children(".inner").append( scol );	
	  	 
	  	};


	  	/**
	  	 * binding some delegate events
	  	 */
	  	function bindDelegateEvents(){

 			$( ".popover" ).each( function(){
 				var pop = this;
 				$( '.popover-title',this ).click( function(){
 					$( pop ).hide();	
 				} );
 			} );

 			$(".button-alignments button").click( function (){
 				$screenmode = $(this).data('option');
 				$(".button-alignments button").removeClass('active');
 				$(this).addClass( 'active' );
 				updateColWidthByScreen();

 			} );
	  	}

	  	function updateColWidthByScreen(){
	  	
	  		switch( $screenmode ){
	  			case 'medium-screen':
	  				$colkey = 'mdcol';
	  				break;
	  			case 'tablet-screen':
	  				$colkey = 'smcol';
	  				break;
	  			case 'mobile-screen':
	  				$colkey = 'xscol';
	  				break;
	  			default: 
	  				$colkey = 'lgcol';	
	  		}

	  		$(".wpo-row",$wpolayout).each( function(){
	 			var _row = $(this);
	 			$( '.wpo-col', _row ).each( function(){
	 				var rcd = $(this).data('colcfg');  
	 				$(this).css( {'width':rcd[$colkey]/config.col*100+'%'} );  
	 			});
		 	});		
	  	}

	 	/**
	 	 * add event triggers to operator in form of selected column and selected row 
	 	 */
	 	function triggerFormsEvent(){
	 		/* ROW SETTING HANDLER */
	 		$("#row-builder form").submit( function(){ 
	 			if( $(".wpo-row.active") ){
	 				var cfg = $(".wpo-row.active").data( 'rowcfg' );
	 				for( var k in cfg ){
	  					cfg[k] = $("[name="+k+"]", "#row-builder").val(  ); 
	  				}
	 
	  				$(".wpo-row.active").data( 'rowcfg' ,cfg );
	 			}  
 				$( "#row-builder" ).hide();
	 			return false;
	 		} );

	 		/* COLUMN SETTING HANDLER */
	 		$("#col-builder form").submit( function(){ 
	 		 
	 			if( $(".wpo-col.active") ){
	 				var cfg = $(".wpo-col.active").data( 'colcfg' );
	 				for( var k in cfg ){
	  				 	var val = $("[name="+k+"]", "#col-builder").val( ); 
	  			 		if( val ){
	  			 			cfg[k] = val;
	  			 		}
	  				}
	  				$(".wpo-col.active").data( 'colcfg' ,cfg );
	 			}  
 				$( "#col-builder" ).hide();
	 			return false;
	 		} );
	 	}


	 	
	 	/**
	 	 * build layout having rows, columns and widgets.
	 	 */
	 	function renderLayoutInRow( rows, widgetids, sub, incol ){
	 		$(rows).each( function() {
	  			// add row here
	  			var row = addRow( sub==true?incol.children( '.inner' ):$(".add-row",$wpolayout), sub );
	  			$( this.cols ).each( function(){ 

	  				var col = addColumn( $(row).children('.inner').children(".wpo-row.active .sg-col"), row, sub );

	  				$( this.widgets ).each( function(){   
	  				 	//$wpowidget.createWidgetButton( col, $("#wpo_"+this.wtype) , this );	
	  				 //	widgetids.push( this.wkey );
	  				 	if( this.image != null ){
	  				 		createBannerWidget( col, this.image, config.imageurl+this.image, this.link )
	  				 	} 
	  				 	console.log( this );
	  				} );
	  				
	  				this.widgets = null;
	  				col.data( 'colcfg', this );
	  			    $(col).css( {'width':(this.lgcol/config.col*100)+'%'} );  
  					if( this.rows.length > 0 ){
	  					 renderLayoutInRow( this.rows, widgetids, true, col ); 
	  				}
	  				this.rows = null;
	  			} );

	  			this.cols = null;
	  			row.data( 'rowcfg', this );
  			} );
  			return true;
	 	}

	 	/**
	 	 *
	 	 *
	 	 */
	 	function buildLayoutByJson( json ) {  
	 		var widgetids = new Array(); 
	 		if( json ) {
		  		var rows = $.parseJSON( json  );
	  			renderLayoutInRow( rows , widgetids, false );
		  	}	 
		  	$wpolayout.fadeIn( 600 );	
		   	
		   	$($wpolayout).children(".inner" ).sortable({
				connectWith: ".layout-builder",
				placeholder: "ui-state-highlight",
				handle:'.wpo-sortable' 
			});	

		   	$($wpolayout).children(".inner" ).sortable({
				connectWith: ".layout-builder",
				placeholder: "ui-state-highlight",
				handle:'.wpo-sortable',
				cancel:'.wpo-icon, .wpo-content' 
			});	

	   	//	$wpowidget.loadWidgetByIds( widgetids );	
	 	}

	 
	 	/**
	 	 * initialize every element
	 	 */
		this.each(function() {  
			 
			$wpolayout = $(this);
		 
			
			init(); 

			/* add some global delegate events */
			bindDelegateEvents();

			/* add event triggers to operator in form of selected column and selected row */
			triggerFormsEvent();

			/* add trigger saving setting layout form */
		//	triggerSaveForm(); 
			buildLayoutByJson( datajson );
			/* preload all widgets types by ajax then calling buildLayoutByJson to render layout follow setting*/
		 	// $wpowidget.loadWidgets( false, buildLayoutByJson, datajson  );	
                        
            $("body").delegate(".wpo-row", "mouseenter", function(){
                $(".ptstooltip").tooltip();
            });

		});
                
                
		return this;
	};
	


})(jQuery);


$(document).ready( function(){
	function getLayoutData( container ){
 			var output = new Array();	
 			$( container ).children('.inner ').children(".wpo-row").each( function(){
 		 
	 			var _row = $(this);
	 			var data = _row.data('rowcfg');
	 			data.cols = new Array();
	 			$(_row).children('.inner').children( '.wpo-col' ).each( function(){
	 				var _col = $(this).data('colcfg');
	 				_col.widgets = new Array();

	 				$(this).children('.inner').children('.wpo-content ').children( '.wpo-ijwidget' ).each( function() {  
	 					var wd = new Object();
	 					wd.image = $("input.imageurl",this).val();
	 					wd.link = $("input.imagelink",this).val();
	 					_col.widgets.push( wd );
	 				} ); 
	 				_col.rows = new Array();
	 				if( $(this).children('.inner').children( '.wpo-row' ).length > 0 ){
	 					_col.rows = getLayoutData( this );
	 				}
	 				data.cols.push( _col );
	 			} );
	 			output.push( data );  
		 	} );
	 		return output;	
	 	}

	 	/**
	 	 * add event triggers to operator in form of selected column and selected row 
	 	 */
	 	function triggerSaveForm(){

	 		$( "#form" ).submit( function(){

	 			$(".layout-builder-wrapper").each( function(){
	 				var output = getLayoutData( $(this).find(".layout-builder") );
		 		    var j = JSON.stringify( output );  
		 		    $(".hidden-content-layout",this).html( j );
	
	//	 		    alert(j );
	 			} );

	 			return true; 
	 		} );
	 	}

		triggerSaveForm();
		 
} );
 