<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% response.setHeader("Access-Control-Allow-Origin", "*"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Create a hover effect</title>
		<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" />
		<script src="https://code.jquery.com/jquery-3.5.1.min.js" charset="utf-8"></script>
		<script src="https://api.mapbox.com/mapbox-gl-js/v1.11.0/mapbox-gl.js"></script>
		<link href="https://api.mapbox.com/mapbox-gl-js/v1.11.0/mapbox-gl.css" rel="stylesheet" />
		<style>
			body { margin: 0; padding: 0; }
			#map { position: absolute; top: 50; bottom: 50; width: 30%; height: 50%; }
		</style>
	</head>
	<body>
		<div id="map"></div>
		<script>
			mapboxgl.accessToken = 'pk.eyJ1IjoibmVsbGVtIiwiYSI6ImNrYmQ3MjBhczA4dnMzMHBtOHY5a3k2amkifQ.EF8b0iNRbeUx7RIpDUppEg';
				var map = new mapboxgl.Map({
						container: 'map',
						maxBounds: [[129.0548, 30.5666], [146.2798, 45.3227]],
						style: 'mapbox://styles/nellem/ckbd7ix041xjp1in7zbq6zw39?optimize=true',
						center: [139.425801, 37.649042],
						zoom: 4//,
						//minZoom: 5,
						//maxZoom: 6
				});
		    var hoveredStateId = null;

		    map.on('load', function() {
		        map.addSource('states', {
		            'type': 'geojson',
		            'data':
		                './json/features.geojson'
		        });

		        // The feature-state dependent fill-opacity expression will render the hover effect
		        // when a feature's hover state is set to true.
		        map.addLayer({
		            'id': 'state-fills',
		            'type': 'fill',
		            'source': 'states',
		            'layout': {},
		            'paint': {
		                'fill-color': '#627BC1',
		                'fill-opacity': [
		                    'case',
		                    ['boolean', ['feature-state', 'hover'], false],
		                    1,
		                    0.5
		                ]
		            }
		        });

		        map.addLayer({
		            'id': 'state-borders',
		            'type': 'line',
		            'source': 'states',
		            'layout': {},
		            'paint': {
		                'line-color': '#627BC1',
		                'line-width': 1
		            }
		        });

		        // When the user moves their mouse over the state-fill layer, we'll update the
		        // feature state for the feature under the mouse.
		        map.on('mousemove', 'state-fills', function(e) {
		            if (e.features.length > 0) {
		                if (hoveredStateId) {
		                    map.setFeatureState(
		                        { source: 'states', id: hoveredStateId },
		                        { hover: false }
		                    );
		                }
		                hoveredStateId = e.features[0].id;
		                map.setFeatureState(
		                    { source: 'states', id: hoveredStateId },
		                    { hover: true }
		                );
		            }
		        });

		        // When the mouse leaves the state-fill layer, update the feature state of the
		        // previously hovered feature.
		        map.on('mouseleave', 'state-fills', function() {
		            if (hoveredStateId) {
		                map.setFeatureState(
		                    { source: 'states', id: hoveredStateId },
		                    { hover: false }
		                );
		            }
		            hoveredStateId = null;
		        });

				map.on('click', function(e) {
					if(hoveredStateId) {
						location.href = "http://www.naver.com/";
					}
				});
		    });
		</script>
	</body>
</html>
