var http = require("http");
var server = http.createServer(function(request, response) {
  response.writeHead(200, {"Content-Type": "text/html"});
  response.write("<!DOCTYPE "html">");
  response.write("<html>");
  response.write("<head>");
  response.write("<title>CI CD Base-build output</title>");
  response.write("</head>");
  response.write("<body>");
  response.write("Base-build - Test results coming");
  response.write("</body>");
  response.write("</html>");
  response.end();
});

server.listen(80);
console.log("Server is listening");