window.setTimeout(function () {
  alert('HAMMER TIME!');
}, 5000);



function hammerTimeout (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  }, time);
}
