function initialize() {
        var myLatlng = new google.maps.LatLng(-34.885148, -56.193074);
        var mapOptions = {
          center: myLatlng,
          zoom: 14,
          scaleControl: false,
          scrollwheel: false,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }

        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        

	  var contentString =
	      '<div class="siteNotice">'+
	      
	      '<p class="firstHeading ">GUIA V</p>'+
	      '<div class="bodyContent">'+
	      '<p>Av. Agraciada 2541 Of. 101 ' +
	      
	      '</p>'+
	      '</div>'+
	      '</div>';

	  var infowindow = new google.maps.InfoWindow({
	      content: contentString
	  });

	  var marker = new google.maps.Marker({
	      position: myLatlng,
	      map: map,
	      title: 'GUIA V'
	  });

      infowindow.open(map,marker);
	}
google.maps.event.addDomListener(window, 'load', initialize);

