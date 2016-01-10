$(document).ready(function() {
  currentVote = $('.vote-counter').html();
  $('.increment-vote').click(function(event) {
    targetVote = $(this).closest('tr').find('.vote-counter');

    targetVote.html(parseInt(currentVote) + 1);
  });
});
