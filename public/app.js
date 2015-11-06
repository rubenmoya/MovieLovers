$( document ).ready(function() {
  var lifes = 3

  $('.movie').click(function() {
    var clicked_id = $(this).data('movieId');
    var winner_id = $('#winner').data('movieId');

    if (clicked_id === winner_id) {
      alert('Winner!');
    } else {
      $(this).addClass('movie--wrong')
      $(this).prepend('<h1 class="error-title">Wrong<br/> <i class="fa fa-thumbs-o-down"></i></h1>')
      console.log('Try again!');
    }
  });

});
