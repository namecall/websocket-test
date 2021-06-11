// Environment
const socket = require("ws")

// Connection
let web_cache = []
const websocket = new socket.Server({port:4532})

// Connection Event
websocket.on("connection", function(client) {
  console.log("Created new connection!")
  client.on("message", function(message) {
     websocket.clients.forEach(function each(click) {
         if (click !== websocket) {
	  client.send(message);
         }
      })
   })
})
