<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>main</title>
</head>
  <style type="text/css">
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }

      /* Optional: Makes the sample page fill the window. */
      html,
      body {
        height: 100%;
        margin: 0;
        padding: 0;
      }

      body {
        padding: 0 !important;
      }

      table {
        font-size: 12px;
      }

      .restaurant-search {
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        background: #fff;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        left: 0;
        position: absolute;
        top: 0;
        width: 880px;
        z-index: 1;
      }

      #map {
        margin-top: 40px;
        width: 880px;
      }

      #listing {
        position: absolute;
        width: 200px;
        height: 490px;
        overflow: auto;
        left: 630px;
        top: 0px;
        cursor: pointer;
        overflow-x: hidden;
      }

      #findrestaurants {
        font-size: 14px;
      }

      #locationField {
        -webkit-box-flex: 1 1 190px;
        -ms-flex: 1 1 190px;
        flex: 1 1 190px;
        margin: 0 8px;
      }

      #controls {
        -webkit-box-flex: 1 1 140px;
        -ms-flex: 1 1 140px;
        flex: 1 1 140px;
      }

      #autocomplete {
        width: 100%;
      }

      #country {
        width: 100%;
      }

      .placeIcon {
        width: 20px;
        height: 34px;
        margin: 4px;
      }

      .restaurantIcon {
        width: 24px;
        height: 24px;
      }

      #resultsTable {
        border-collapse: collapse;
        width: 240px;
      }

      #rating {
        font-size: 13px;
        font-family: Arial Unicode MS;
      }

      .iw_table_row {
        height: 18px;
      }

      .iw_attribute_name {
        font-weight: bold;
        text-align: right;
      }

      .iw_table_icon {
        text-align: right;
      }
    </style>

<body>
	<h3>${user.id}님이로그인하셨습니다.야미요로 맛밥하세요!!</h3>

	<a href="update">회원 정보 수정</a>
	<a href="delete">회원 탈퇴</a>
	<a href="logout">로그아웃</a>
	<a href="board/notice/list">공지사항</a>
	<a href="board/fstory/list">맛있는 이야기</a>
	<a href="search/view">검색</a>
	<br>

	<!-- <iframe
  width="600"
  height="450"
  style="border:0"
  loading="lazy"
  allowfullscreen
  referrerpolicy="no-referrer-when-downgrade"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyC2cSOzJSi26ZGz7m40volJlmzBhnPkllM
    &q=Space+Needle,Seattle+WA">
</iframe> -->


    <script>
      // This example uses the autocomplete feature of the Google Places API.
      // It allows the user to find all restaurants in a given place, within a given
      // country. It then displays markers for all the restaurants returned,
      // with on-click details for each restaurant.
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      let map;
      let places;
      let infoWindow;
      let markers = [];
      let autocomplete;
      const countryRestrict = { country: "kr" };
      const MARKER_PATH =
        "https://developers.google.com/maps/documentation/javascript/images/marker_green";
      const hostnameRegexp = new RegExp("^https?://.+?/");
      const countries = {
        au: {
          center: { lat: -25.3, lng: 133.8 },
          zoom: 4,
        },
        br: {
          center: { lat: -14.2, lng: -51.9 },
          zoom: 3,
        },
        ca: {
          center: { lat: 62, lng: -110.0 },
          zoom: 3,
        },
        fr: {
          center: { lat: 46.2, lng: 2.2 },
          zoom: 5,
        },
        de: {
          center: { lat: 51.2, lng: 10.4 },
          zoom: 5,
        },
        mx: {
          center: { lat: 23.6, lng: -102.5 },
          zoom: 4,
        },
        nz: {
          center: { lat: -40.9, lng: 174.9 },
          zoom: 5,
        },
        it: {
          center: { lat: 41.9, lng: 12.6 },
          zoom: 5,
        },
        za: {
          center: { lat: -30.6, lng: 22.9 },
          zoom: 5,
        },
        es: {
          center: { lat: 40.5, lng: -3.7 },
          zoom: 5,
        },
        pt: {
          center: { lat: 39.4, lng: -8.2 },
          zoom: 6,
        },
        us: {
          center: { lat: 37.1, lng: -95.7 },
          zoom: 3,
        },
        uk: {
          center: { lat: 54.8, lng: -4.6 },
          zoom: 5,
        },
        
        kr: {
          center : { lat: 37.5642135 ,lng: 127.0016985 },
          zoom: 16,
        },
        
      };

      function initMap() {
        map = new google.maps.Map(document.getElementById("map"), {
          zoom: countries["kr"].zoom,
          center: countries["kr"].center,
          mapTypeControl: true,
          panControl: true,
          zoomControl: true,
          streetViewControl: true,
        });
        infoWindow = new google.maps.InfoWindow({
          content: document.getElementById("info-content"),
        });
        // Create the autocomplete object and associate it with the UI input control.
        // Restrict the search to the default country, and to place type "cities".
        autocomplete = new google.maps.places.Autocomplete(
          document.getElementById("autocomplete"),
          {
            types: ["(cities)"],
            componentRestrictions: countryRestrict,
          }
        );
        places = new google.maps.places.PlacesService(map);
        autocomplete.addListener("place_changed", onPlaceChanged);
        // Add a DOM event listener to react when the user selects a country.
        document
          .getElementById("country")
          .addEventListener("change", setAutocompleteCountry);
      }

      // When the user selects a city, get the place details for the city and
      // zoom the map in on the city.
      function onPlaceChanged() {
        const place = autocomplete.getPlace();

        if (place.geometry && place.geometry.location) {
          map.panTo(place.geometry.location);
          map.setZoom(15);
          search();
        } else {
          document.getElementById("autocomplete").placeholder = "Enter a city";
        }
      }

      // Search for restaurants in the selected city, within the viewport of the map.
      function search() {
        const search = {
          bounds: map.getBounds(),
          types: ["restaurant"],
        };
        places.nearbySearch(search, (results, status, pagination) => {
          if (status === google.maps.places.PlacesServiceStatus.OK && results) {
            clearResults();
            clearMarkers();

            // Create a marker for each restaurant found, and
            // assign a letter of the alphabetic to each marker icon.
            for (let i = 0; i < results.length; i++) {
              const markerLetter = String.fromCharCode(
                "A".charCodeAt(0) + (i % 26)
              );
              const markerIcon = MARKER_PATH + markerLetter + ".png";
              // Use marker animation to drop the icons incrementally on the map.
              markers[i] = new google.maps.Marker({
                position: results[i].geometry.location,
                animation: google.maps.Animation.DROP,
                icon: markerIcon,
              });
              // If the user clicks a restaurant marker, show the details of that restaurant
              // in an info window.
              markers[i].placeResult = results[i];
              google.maps.event.addListener(
                markers[i],
                "click",
                showInfoWindow
              );
              setTimeout(dropMarker(i), i * 100);
              addResult(results[i], i);
            }
          }
        });
      }

      function clearMarkers() {
        for (let i = 0; i < markers.length; i++) {
          if (markers[i]) {
            markers[i].setMap(null);
          }
        }
        markers = [];
      }

      // Set the country restriction based on user input.
      // Also center and zoom the map on the given country.
      function setAutocompleteCountry() {
        const country = document.getElementById("country").value;

        if (country == "all") {
          autocomplete.setComponentRestrictions({ country: [] });
          map.setCenter({ lat: 15, lng: 0 });
          map.setZoom(2);
        } else {
          autocomplete.setComponentRestrictions({ country: country });
          map.setCenter(countries[country].center);
          map.setZoom(countries[country].zoom);
        }
        clearResults();
        clearMarkers();
      }

      function dropMarker(i) {
        return function () {
          markers[i].setMap(map);
        };
      }

      function addResult(result, i) {
        const results = document.getElementById("results");
        const markerLetter = String.fromCharCode("A".charCodeAt(0) + (i % 26));
        const markerIcon = MARKER_PATH + markerLetter + ".png";
        const tr = document.createElement("tr");
        tr.style.backgroundColor = i % 2 === 0 ? "#F0F0F0" : "#FFFFFF";

        tr.onclick = function () {
          google.maps.event.trigger(markers[i], "click");
        };
        const iconTd = document.createElement("td");
        const nameTd = document.createElement("td");
        const icon = document.createElement("img");
        icon.src = markerIcon;
        icon.setAttribute("class", "placeIcon");
        icon.setAttribute("className", "placeIcon");
        const name = document.createTextNode(result.name);
        iconTd.appendChild(icon);
        nameTd.appendChild(name);
        tr.appendChild(iconTd);
        tr.appendChild(nameTd);
        results.appendChild(tr);
      }

      function clearResults() {
        const results = document.getElementById("results");

        while (results.childNodes[0]) {
          results.removeChild(results.childNodes[0]);
        }
      }

      // Get the place details for a restaurant. Show the information in an info window,
      // anchored on the marker for the restaurant that the user selected.
      function showInfoWindow() {
        const marker = this;
        places.getDetails(
          { placeId: marker.placeResult.place_id },
          (place, status) => {
            if (status !== google.maps.places.PlacesServiceStatus.OK) {
              return;
            }
            infoWindow.open(map, marker);
            buildIWContent(place);
          }
        );
      }

      // Load the place information into the HTML elements used by the info window.
      function buildIWContent(place) {
        document.getElementById("iw-icon").innerHTML =
          '<img class="restaurantIcon" ' + 'src="' + place.icon + '"/>';
        document.getElementById("iw-url").innerHTML =
          '<b><a href="' + place.url + '">' + place.name + "</a></b>";
        document.getElementById("iw-address").textContent = place.vicinity;

        if (place.formatted_phone_number) {
          document.getElementById("iw-phone-row").style.display = "";
          document.getElementById("iw-phone").textContent =
            place.formatted_phone_number;
        } else {
          document.getElementById("iw-phone-row").style.display = "none";
        }

        // Assign a five-star rating to the restaurant, using a black star ('&#10029;')
        // to indicate the rating the restaurant has earned, and a white star ('&#10025;')
        // for the rating points not achieved.
        if (place.rating) {
          let ratingHtml = "";

          for (let i = 0; i < 5; i++) {
            if (place.rating < i + 0.5) {
              ratingHtml += "&#10025;";
            } else {
              ratingHtml += "&#10029;";
            }
            document.getElementById("iw-rating-row").style.display = "";
            document.getElementById("iw-rating").innerHTML = ratingHtml;
          }
        } else {
          document.getElementById("iw-rating-row").style.display = "none";
        }

        // The regexp isolates the first part of the URL (domain plus subdomain)
        // to give a short URL for displaying in the info window.
        if (place.website) {
          let fullUrl = place.website;
          let website = String(hostnameRegexp.exec(place.website));

          if (!website) {
            website = "http://" + place.website + "/";
            fullUrl = website;
          }
          document.getElementById("iw-website-row").style.display = "";
          document.getElementById("iw-website").textContent = website;
        } else {
          document.getElementById("iw-website-row").style.display = "none";
        }
      }
    </script>


      
 
 
</head>

<body>
      <h2>Map</h2>
                       
        <!-- Hero Area End -->
        <!-- ================ contact section start ================= -->
        <section class="contact-section">
                <div class="container">
                   <div class="d-none d-sm-block mb-5 pb-4">
                    	<div id="MapID" style="height: 480px; position: relative; overflow: hidden;">
     <div class="restaurant-search">
      <div id="findrestaurant">도시에서 당신의 맛집을 찾아보세요!! </div>

      <div id="locationField">
        <input id="autocomplete" placeholder="Enter a city" type="text" />
      </div>

      <div id="controls">
        <select id="country">
          <!-- 코드생략 -->
          <option value="kr" selected>Korea</option>
        </select>
      </div>
    </div>

    <div id="map" style="height: 480px; position: relative; overflow: hidden;"></div>

    <div id="listing">
      <table id="resultsTable">
        <tbody id="results"></tbody>
      </table>
    </div>

    <div style="display: none">
      <div id="info-content">
        <table>
          <tr id="iw-url-row" class="iw_table_row">
            <td id="iw-icon" class="iw_table_icon"></td>
            <td id="iw-url"></td>
          </tr>
          <tr id="iw-address-row" class="iw_table_row">
            <td class="iw_attribute_name">Address:</td>
            <td id="iw-address"></td>
          </tr>
          <tr id="iw-phone-row" class="iw_table_row">
            <td class="iw_attribute_name">Telephone:</td>
            <td id="iw-phone"></td>
          </tr>
          <tr id="iw-rating-row" class="iw_table_row">
            <td class="iw_attribute_name">Rating:</td>
            <td id="iw-rating"></td>
          </tr>
          <tr id="iw-website-row" class="iw_table_row">
            <td class="iw_attribute_name">Website:</td>
            <td id="iw-website"></td>
          </tr>
        </table>
      </div>
    </div>
  
    </div>
  </div>
                    
    
    
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
	
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2cSOzJSi26ZGz7m40volJlmzBhnPkllM&callback=initMap&libraries=places&v=weekly&radius=5000"></script>



  
</body>
</html>
