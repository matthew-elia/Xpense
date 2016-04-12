# app/assets/javascripts/components/record_form.js.coffee

@RecordForm = React.createClass
	getInitialState: ->
		title: ''
		date: ''
		amount: ''
	render: ->
		React.DOM.form
			className: 'form-inline'
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Date'
					name: 'date'
					value: @state.date
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Title'
					name: 'title'
					value: @state.title
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Amount'
					name: 'amount'
					value: @state.amount
					onChange: @handleChange
			React.DOM.button
				type: 'submit'
				className: 'btn btn-primary'
				disabled: !@valid()
				'Create Record'
	handleChange: (e) ->
		name = e.event.name
		@setState "#{ name }": e.target.value
	valid: ->
		@state.title && @state.date && @state.amount
