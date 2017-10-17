var base-build-websocket = require("nodejs-websocket")
 //*  install nodejs-websocket or put all files in a folder called "nodejs-websocket *//
// Scream server example: "hi" -> "HI!!!" 
var base-build = base-build-websocket.createServer(function (conn) {
    console.log("base-build instance Connection")
    conn.on("text", function (str) {
        console.log("Received "+str)
        conn.sendText(str.toUpperCase()+"!!!")
    })
    conn.on("close", function (code, reason) {
        console.log("Connection closed")
    })
}).listen(8001)