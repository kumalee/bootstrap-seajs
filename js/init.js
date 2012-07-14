define(function(require){
 	var $ = require("jquery");
	require('bootstrap.sea/bootstrap-tab')($);
	$(".nav-tabs a:last").tab("show");
});
