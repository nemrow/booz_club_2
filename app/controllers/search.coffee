`import Ember from 'ember'`

SearchController = Ember.Controller.extend
  actions:
    beginSearch: ->
      newSearch = @store.createRecord 'search', {
        booze: @get('boozeType')
      }
      newSearch.save()

`export default SearchController`
