$(document).ready(function() {
	$('#list').click(function(event){event.preventDefault();$('#books .item').addClass('list-group-item');});
	$('#grid').click(function(event){event.preventDefault();$('#books .item').removeClass('list-group-item');$('#books .item').addClass('grid-group-item');});
});