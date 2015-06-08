/*
1. Create a page with an artist search form.
2. When the search form is submitted, make an artist search with the Spotify API.
3. Show the list of artists' names and images
*/


	$("#search-button").on("click", function(){
		

		var artist = $("#artist").val();

		 $.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=artist&query=" + artist,
			data: artist, 
			success: function(response){showArtist(response)},
            error: function(){alert("Nooooooo")},
			dataType: "json",
		});
	});

	function showArtist(element){
         $('ul').empty();
         total_length = element.artists.items.length;
         console.log(element);
        	for(var i=0; i < total_length; i++){
            	$('ul').append(
            		"<li>"+
             		element.artists.items[i].name +
             		"</li>");
        	};
    	};


/*   

	 $(document).ready(function(){
 	//btn-search
 	$('#btn-search').on("click", function(){
 		var artist = $('#search-term').val();
 		var custom_url = "https://api.spotify.com/v1/search?type=artist&query="+artist;
 		$.ajax({
 			type: "GET",
 			url: custom_url,
 			data: "",
 			success: function(response){show_artist(response)},
 			error: function(){console.log("ERROR")},
 			dataType: "json"
 		});
 	});

 	function show_artist(element) {
 		var list = element.artists;
 		var item = list.items[2];
 		var image = item.images[0];
 		var url_image = image.url;

 		$('#content').append( "<img src='"+url_image+"'>");
 	}
 });
 */