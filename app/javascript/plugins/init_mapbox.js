import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map-houses');

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-houses',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
      new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};

// const addMarkersToMap = (map, markers) => {
//   markers.forEach((marker) => {
//     const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .setPopup(popup) // add this
//       .addTo(map);
//   });
// };

export { initMapbox };
