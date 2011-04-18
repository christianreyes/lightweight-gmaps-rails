$(document).ready(function() {
	// Only call the function when it is defined on the page
	if(typeof create_map == 'function') { 
		create_map()(); 
	}
});