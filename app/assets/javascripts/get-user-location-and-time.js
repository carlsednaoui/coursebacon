$(document).ready(function() {
	var currentDate = new Date();
	
	var msg = "It's " + currentDate.getSimpleTime() + 
		" in " +  window.session.location.address.city + 
		" and it's time for you to learn something new! ";
	
	document.getElementById('user_location_and_time').innerHTML = msg;
});


Date.prototype.getSimpleTime = function() {
	return ( this.getHours()%12 || 12 ) + ':' + ( this.getMinutes()<10 ? '0':'' ) + this.getMinutes() + ( this.getHours()<12 ? 'am':'pm' );
};