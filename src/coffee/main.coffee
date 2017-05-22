$(document).ready ()->
  doRequest "http://pmbp2.local:8080/ciu-simulator/MockAgentStartE00.txt", {}
  doRequest "http://pmbp2.local:8080/ciu-simulator/MockAgentStartSuccess.txt", {}
  $('#testEnable').click ()->
    this.disabled = true
    null
  null

doRequest = (url, obj)->
  $.post url, obj, (data)->
    console.log data
  .fail (error)->
    console.log error
  null
