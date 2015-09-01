$(document).ready(function(){

});
$(document).on('click', '#showmenu', function(e) {
	$('#navshade').addClass('show');
	$('#navbar').addClass('show');
	return false;
});
$(document).on('click', '#navshade', function(e) {
	$('#navshade').removeClass('show');
	$('#navbar').removeClass('show');
	return false;
});