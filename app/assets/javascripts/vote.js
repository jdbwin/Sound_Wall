$(document).ready(function() {
  $('.increment-vote').click(function() {
    console.log(parseInt($('.vote-counter').html()) + 1);
  });
});
