# app/assets/javascripts/components/records.js.coffee

 @Records = React.createClass
    getInitialState: ->
      records: @props.data
    getDefaultProps: ->
      records: []
    render: ->
    	React.DOM.div
    		className: 'container'
      React.DOM.div
        className: 'records'
        React.DOM.h2
          className: 'title text-center'
          'C.R.E.A.M.'
        React.DOM.h4
          className: 'subtitle text-center'
          'cash rules everything around me'
        React.DOM.br null
        React.DOM.br null
        React.DOM.table
          className: 'table table-bordered'
          React.DOM.thead null,
            React.DOM.tr null,
              React.DOM.th null, 'Date'
              React.DOM.th null, 'Title'
              React.DOM.th null, 'Amount'
          React.DOM.tbody null,
            for record in @state.records
              React.createElement Record, key: record.id, record: record
