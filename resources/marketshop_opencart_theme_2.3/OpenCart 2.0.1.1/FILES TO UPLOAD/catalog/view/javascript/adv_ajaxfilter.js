var timeoutID   = 0;
var cache       = [];
var delay       = 1;
var container   = "";
var tag_tmpl    = $.template(null, '<li><label><input id="tag_${tag}" class="filtered" type="checkbox" name="tags[]" value="${tag}" {{if checked}} checked="checked" {{/if}}><span for="tag_${tag}">${name}</span></label></li>');
var cat_tmpl    = $.template(null, '<li><label><input id="cat_${category_id}" class="filtered" type="checkbox" name="categories[]" value="${category_id}" {{if checked}} checked="checked" {{/if}}><span for="cat_${category_id}">${name}</span></label></li>');

if (!Array.prototype.indexOf) {
    Array.prototype.indexOf = function(obj, start) {
        for (var i = (start || 0), j = this.length; i < j; i++) {
            if (this[i] === obj) {
                return i;
            }
        }
        return -1;
    }
}

String.prototype.hashCode = function(){
    var hash = 0, i, ch;
    if (this.length == 0) return hash;
    for (i = 0; i < this.length; i++) {
        ch = this.charCodeAt(i);
        hash = ((hash<<5)-hash)+ch;
        hash = hash & hash;
    }
    return hash;
};

$(document).on('change', '.price_limit', (function () {
    var b = parseInt($("#min_price").val());
    var a = parseInt($("#max_price").val());
    $("#slider-range").slider("values", [b, a]);
    delayedFilter()
}));

$(document).on('change', '#adv_ajaxfilter .filtered', (function () {
    delayedFilter();
}));

$(function () {
    $("#slider-range").slider({
        range:true,
        min:0,
        max:0,
        values:[0, 0],
        stop:function (a, b) { delayedFilter() },
        slide:function (a, b) {
            $("#min_price").val(b.values[0]);
            $("#max_price").val(b.values[1])
        }
    });

    $("#min_price").val($("#slider-range").slider("values", 0));
    $("#max_price").val($("#slider-range").slider("values", 1))
});

$(document).ready(function () {
    container = getContainer();

    $(".option_box .option_name").click(function () {
        $(this).siblings(".collapsible").toggle();
        $(this).toggleClass("hided")
    });
    
    $(".option_box .attribute_group_name").click(function () {
        $(this).siblings(".attribute_box").toggle();
        $(this).toggleClass("hided")
    });
    
    $(".clear_filter").click(function () {
        $("#adv_ajaxfilter img").removeClass("selected");
        $("#adv_ajaxfilter select").val("");
        
        $("#adv_ajaxfilter :input").each(function () {
            if ($(this).is(":checked")) {
                $(this).attr("checked", false)
            }
        });
        
        var b = $("#slider-range").slider("option", "min");
        var a = $("#slider-range").slider("option", "max");
        
        $("#slider-range").slider("option", {values:[b, a]});
        $("#min_price").val(b);
        $("#max_price").val(a);
        
        $("div[id^=slider-range-]").each(function(index, element) {
            var id = this.id.replace(/[^\d]/g, '');
            var b = $(element).slider("option", "min");
            var a = $(element).slider("option", "max");
            
            hs = $(element).slider();
            hs.slider("option", {values:[b, a]});
            hs.slider("option","slide").call(hs, null, { handle: $(".ui-slider-handle", hs), values:[b, a] });
    
            $("#attribute_value_"+id+"_min").val('');
            $("#attribute_value_"+id+"_max").val('');
    
        });
        delayedFilter()
    });

    $(document).on('click', '.pagination a', (function () {
        var a = $(this).attr("href");
        var b = a.match(/page=(\d+)/);
        $("#adv_ajaxfilter_page").val(b[1]);
        filter(false);
        var cont = getContainer();
        $('html, body').animate({ scrollTop: $(cont).offset().top }, 'slow');
        return false;
    }));

    if($(".sort select").length){
        $(".sort select").get(0).onchange = null;
        $(".sort select").change(function () {
            var d = $(this).val();
            var a = getUrlVar(d, "sort");
            var b = getUrlVar(d, "order");
            $("#adv_ajaxfilter_sort").val(a);
            $("#adv_ajaxfilter_order").val(b);
            delayedFilter()
        });
    }

    if ($(".limit select").length) {
        $(".limit select").get(0).onchange = null;
        $(".limit select").change(function () {
            $("#adv_ajaxfilter_limit").val(getUrlVar($(this).val(), "limit"));
            delayedFilter()
        });
    }

    // deserialize
    var hash = window.location.hash.substr(1);
    if (hash && $('instock').is(':visible') && $('instock').is(':checked')) {
        $('instock').attr("checked", false);
    }
    
    $("#adv_ajaxfilter").deserialize(hash);

    syncImgCbs();

    $("#adv_ajaxfilter img").bind("click", function() {
        var $input = $(this).prev("input");
        if ($input.attr("disabled")) {
            return;
        }
        $(this).toggleClass("selected");
        $input.prop('checked', !$input.prop('checked'));
        delayedFilter();
    });

    $("div[id^=slider-range-]").each(function(index, element) {
	
        var id = this.id.replace(/[^\d]/g, '');
	var arr = window['attr_arr_'+id];

	var b = parseInt($("#attribute_value_"+id+"_min").val());
	var a = parseInt($("#attribute_value_"+id+"_max").val());
	b = arr.indexOf(b);
	a = arr.indexOf(a);
	if (a >= 0 && b >= 0){
	    hs = $(element).slider();
	    hs.slider("option", {values:[b, a]});
	    hs.slider("option","slide").call(hs, null, { handle: $(".ui-slider-handle", hs), values:[b, a] });
	}
    });

    if ($(".sort select").length) {
        if ($("#adv_ajaxfilter_sort").val()) {
            $(".sort select").each(function(i, e) {
                if (getUrlVar($(this).val(), "sort") == $("#adv_ajaxfilter_sort").val() && getUrlVar($(this).val(), "order") == $("#adv_ajaxfilter_order").val()) {
                    $(".sort select").val($(this).val());
                    return;
                }
            });
        } else {
            $val = $(".sort select").val();
            $("#adv_ajaxfilter_sort").val(getUrlVar($val, "sort"));
            $("#adv_ajaxfilter_order").val(getUrlVar($val, "order"))
        }
    }
    if ($("#adv_ajaxfilter_limit").length) {
        if ($("#adv_ajaxfilter_limit").val()) {
            $(".limit select").val($("#adv_ajaxfilter_limit").val());
        } else {
            $("#adv_ajaxfilter_limit").val(getUrlVar($(".limit select").val(), "limit"));
        }
    }

    filter(true, true);
});

function replaceHtml(a) {
    return  a.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");
}

function getUrlVar(url, rvar ) {
    var a = String(url).split("?");
    var _var = "";
    if (a[1]) {
        var vars = a[1].split("&");
        for (var i = 0; i <= (vars.length); i++) {
            if (vars[i]) {
                var b = vars[i].split("=");
                if (b[0] && b[0] == rvar) {
                    _var = b[1];
                }
            }
        }
    }
    return _var;
}

function syncImgCbs() {
    $("#adv_ajaxfilter input.filtered[type=\"checkbox\"]").each(function() {
        var $img = $(this).next('img');
        if ($img.length) {
            if ($(this).is(":checked")) {
                $img.addClass("selected");
            } else {
                $img.removeClass("selected");
            }
        }
    });
}

function filter(b, c ) {
    var a = $("#adv_ajaxfilter").serialize().replace(/[^&]+=\.?(?:&|$)/g, "").replace(/&+$/, "");
	var cont = getContainer();
    if (!b) {
        window.location.hash = a
    }
    var h = a.hashCode();

    var route = $("#adv_ajaxfilter_route").val();
    var url   = $("#adv_ajaxfilter_url").val();
	var _cont = $(cont);
	
    if(route != 'product/adv_ajaxfilter' && _cont.length < 1){
        window.location = url+ '#' + a;
    }

    if (cache[h]){
        adv_result(cache[h]);
    } else {
        $(cont).advOverlay();
        $("#adv_ajaxfilter").advOverlay();

        $.ajax({url:"index.php?route=module/adv_ajaxfilter/getproducts", type:"POST", data:a + (b ? "&getPriceLimits=true" : ""), dataType:"json",
            success:function (g) {
                adv_result(g, b);
                cache[h] = g;
                var cont = getContainer();
                $(cont).advUnoverlay();
                $("#adv_ajaxfilter").advUnoverlay();
            }
		});
    }
}

function adv_result(g, b) {
    var cont = getContainer();
    var view = 'product-layout';

    var hash = window.location.hash.substr(1);
    if (typeof(g.result_html) != "undefined") {
        $(cont).parent().html(g.result_html);
        if (localStorage.getItem('display') == 'list') {
       		$('#list-view').trigger('click');
       	} else {
       		$('#grid-view').trigger('click');
       	}
        afterload();

        if(g.pagination == '') {
            g.pagination = '<ul class="pagination"></ul>';
        }

        $(".pagination").parent().parent().children().last().html(g.pagination_result);
		$(".pagination").parent().html(g.pagination);

		if (b && g.min_price == g.max_price) {
			$('.price_slider').hide();
		}
    }
    
    var d = parseInt(g.min_price);
    var c = Math.ceil(parseFloat(g.max_price));
    if (b) {
        $("#slider-range").slider("option", {min:d, max:c});
        if ($("#max_price").val() >= 1) {
            d = parseInt($("#min_price").val());
            c = parseInt($("#max_price").val())
        }
        $("#slider-range").slider("option", {values:[d, c]});
        $("#min_price").val(d);
        $("#max_price").val(c)
    }
	
    if (g.totals_data) {

        $('#filter_categories').html('');
        if (g.totals_data.categories.length) {
            $.tmpl(cat_tmpl, g.totals_data.categories).appendTo('#filter_categories');
            $('#filter_categories').parents('.option_box').show();
        } else {
            $('#filter_categories').parents('.option_box').hide();
        }

        var atts = {};
        $.each(g.totals_data.attributes, function(k, v) {
            atts[(v.id + "_" + v.text).replace(/\s/g, '_')] = v.t;
        });

        $('.a_name').each(function (k, v) {
            var at_v_i = $(v).attr('at_v_i').replace(/\s/g, '_');
            var at_v_i_e = replaceHtml(at_v_i);
            if (atts[at_v_i]) {
                $('[at_v_t="' + at_v_i_e + '"]').text($('[at_v_t="' + at_v_i_e + '"]').attr('data-value') + " (" + atts[at_v_i] + ")");
                $(v).removeAttr("disabled");
            } else {
                $('[at_v_t="' + at_v_i_e + '"]').text($('[at_v_t="' + at_v_i_e + '"]').attr('data-value'));
                $(v).attr("disabled", "disabled");
                $(v).removeAttr('checked');
                $(v).removeAttr(':selected');
            }
        });

        var h = [];
        $.each(g.totals_data.manufacturers, function (f, k) {
            if (k.id) {
                h[h.length] = k.id;
                var j = $("#manufacturer_" + k.id);
                if (j.length == 0) {
                    return;
                }
                j.removeAttr("disabled");
                if (j.get(0).tagName == "OPTION") {
                    j.text($("#m_" + k.id).val() + " (" + k.t + ")")
                } else {
                    $('label[for="manufacturer_' + k.id + '"]').text($("#m_" + k.id).val() + " (" + k.t + ")")
                }
            }
        });
        $(".manufacturer_value").each(function (f, k) {
            var j = $(this);
            var l = j.attr("id").match(/manufacturer_(\d+)/);
            if ($.inArray(l[1], h) < 0) {
                j.attr("disabled", "disabled");
                if (this.tagName == "OPTION") {
                    j.text($("#m_" + l[1]).val());
                    j.prop("selected", false)
                } else {
                    $('label[for="manufacturer_' + l[1] + '"]').text($("#m_" + l[1]).val());
                    j.prop("checked", false)
                }
            }
        });
        var e = [];
        $.each(g.totals_data.options, function (j, k) {
            if (k.id) {
                e[e.length] = k.id;
                var f = $("#option_value_" + k.id);
                if (f.length) {
                    f.removeAttr("disabled");
                    if (f.get(0).tagName == "OPTION") {
                        f.text($("#o_" + k.id).val() + " (" + k.t + ")")
                    } else {
                        $('label[for="option_value_' + k.id + '"]').text($("#o_" + k.id).val() + " (" + k.t + ")")
                    }
                }
            }
        });
        $(".option_value").each(function (j, k) {
            var f = $(this);
            var l = f.attr("id").match(/option_value_(\d+)/);
            if ($.inArray(l[1], e) < 0) {
                f.attr("disabled", "disabled");
                if (this.tagName == "OPTION") {
                    f.text($("#o_" + l[1]).val());
                    f.attr("selected", false)
                } else {
                    $('label[for="option_value_' + l[1] + '"]').text($("#o_" + l[1]).val());
                    f.attr("checked", false)
                }
            }
        })
    }
}

function getContainer(){
    return '.product-layout';
}

function delayedFilter() {
    clearTimeout(timeoutID);
    $("#adv_ajaxfilter_page").val(0);
    timeoutID = setTimeout("filter(false, false)", delay)
}

