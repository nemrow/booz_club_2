`import Ember from 'ember'`

SearchResultsRoute = Ember.Route.extend
  model: (params) ->
    @store.find "search", params.searchId

`export default SearchResultsRoute`
