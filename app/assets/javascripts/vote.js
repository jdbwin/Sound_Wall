$(document).ready(function() {
  $('.increment-vote').click(function(event) {
    targetVote = $(this).closest('tr').find('.vote-counter');

    targetVote.html(parseInt(targetVote.html()) + 1);
    $(this).hide();
  });
});
