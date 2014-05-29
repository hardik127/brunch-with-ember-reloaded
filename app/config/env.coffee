"use strict"
module.exports = (->
	envObject = {}
	moduleNames = window.require.list().filter((module) ->
		new RegExp("^envs/").test module
	)
	moduleNames.forEach (module) ->
		key = module.split("/").reverse()[0]
		envObject[key] = require(module)
		return

	envObject
)()