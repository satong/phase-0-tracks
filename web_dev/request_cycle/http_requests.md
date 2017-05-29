## What are some common HTTP status codes?
Status codes fall into classes: informational (1xx), success (2xx), redirection (3xx), client errors (4xx), server errors (5xx).
* 200 represents successful response
* 404 Not Found: requested resource is no longer available or not found
* 403 Forbidden: access to the resource is forbidden (e.g., not on whitelist)
* 500 Internal Server Error: catch-all server-side error code
* 503 Service Unavailable: web-server is not available
* 504 Gateway Timeout: access to secondary web server (e.g., apache server) by proxy server has timed out

## What is the difference between a GET request and a POST request? When might each be used?
* GET requests: requests data from specified resource (can be cached, remain in browser history, bookmarked, data length restrictions)
* POST requests: submits data to be processed to a specified source (opposite characteristics to the GET request)

## What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a small piece of data that is sent from website and stored on the user's computer (while browsing) by the web browser. Cookies are passed as HTTP headers, both in the request (client -> server), and in the response (server -> client).
