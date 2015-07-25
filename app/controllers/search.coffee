`import Ember from 'ember'`
`import GeoLocationMixin from 'booz-club-2/mixins/geolocation-mixin'`

SearchController = Ember.Controller.extend
  latitude: null
  longitude: null

  locationFound: (->
    Ember.isPresent(@get('latitude'))
  ).property('latitude', 'longitude')

  init: ->
    @get('geolocation').on 'change', (geoposition) =>
      if geoposition.coords.latitude
        @set 'latitude', geoposition.coords.latitude
        @set 'longitude', geoposition.coords.longitude

  actions:
    beginSearch: ->
      newSearch = @store.createRecord 'search', {
        booze: @get('boozeType')
        longitude: @get('longitude')
        latitude: @get('latitude')
      }
      newSearch.save()

`export default SearchController`
