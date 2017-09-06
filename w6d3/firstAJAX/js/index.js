console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
  	console.log(data);
  },
  error() {
  	console.error("ERROR NO WEATHER :(");
  }
});

// Add another console log here, outside your AJAX request
console.log('ASYNC my battleship');


//
// When does the request get sent?
  // In between the console.logs
// When does the response come back?
  // After the rest of the page has been run -- async style
// What's the current weather in New York?
  // {temp: 294.14, pressure: 1010, humidity: 68, temp_min: 291.15, temp_max: 297.15}
// Did the page refresh?
  // No.
// How could we use different HTTP methods in our request?
  // ???
