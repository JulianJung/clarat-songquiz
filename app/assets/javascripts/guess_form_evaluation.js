$(document).ready(function() {
  var button = document.getElementById('guesses_submit');
  if (button) {

    button.onclick = function(){
      var song_names_list = document.getElementById("sortable_names");
      var listItems_song_names = song_names_list.getElementsByTagName("li");
      var user_names_list = document.getElementById("sortable_users");
      var listItems_user_names = user_names_list.getElementsByTagName("li");
      for (var i=0; i < listItems_song_names.length; i++) {

        var hiddenfield_name = document.getElementById("guess_song_"+i);
        hiddenfield_name.value = listItems_song_names[i].dataset.songid;
        var hiddenfield_user = document.getElementById("guess_user_"+i);
        hiddenfield_user.value = listItems_user_names[i].innerText;
      }
    }
  };
});
