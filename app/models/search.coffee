`import DS from 'ember-data'`

Search = DS.Model.extend {
  booze: DS.attr 'string'
  longitude: DS.attr "string"
  latitude: DS.attr "string"
}

`export default Search`
