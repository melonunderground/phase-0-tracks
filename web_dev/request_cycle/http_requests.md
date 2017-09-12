What are some common HTTP status codes?
200-OK

10.2.1 200 OK

The request has succeeded. The information returned with the response is dependent on the method used in the request, for example:

GET an entity corresponding to the requested resource is sent in the response;

HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;

POST an entity describing or containing the result of the action;

TRACE an entity containing the request message as received by the end server.
403 Forbidden

10.4.4 403 Forbidden

The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated. If the request method was not HEAD and the server wishes to make public why the request has not been fulfilled, it SHOULD describe the reason for the refusal in the entity. If the server does not wish to make this information available to the client, the status code 404 (Not Found) can be used instead.
404 Not Found

10.4.5 404 Not Found

The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent. The 410 (Gone) status code SHOULD be used if the server knows, through some internally configurable mechanism, that an old resource is permanently unavailable and has no forwarding address. This status code is commonly used when the server does not wish to reveal exactly why the request has been refused, or when no other response is applicable.


500 Internal Server Error

10.5.1 500 Internal Server Error

The server encountered an unexpected condition which prevented it from fulfilling the request.


502 Bad Gateway

10.5.3 502 Bad Gateway

The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request.

503 Service Unavailable

10.5.4 503 Service Unavailable

The server is currently unable to handle the request due to a temporary overloading or maintenance of the server. The implication is that this is a temporary condition which will be alleviated after some delay. If known, the length of the delay MAY be indicated in a Retry-After header. If no Retry-After is given, the client SHOULD handle the response as it would for a 500 response.

      Note: The existence of the 503 status code does not imply that a
      server must use it when becoming overloaded. Some servers may wish
      to simply refuse the connection.

504 Gateway Timeout

10.5.5 504 Gateway Timeout

The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.

      Note: Note to implementors: some deployed proxies are known to
      return 400 or 500 when DNS lookups time out.


What is the difference between a GET request and a POST request? When might each be used?

HTTP POST requests supply additional data from the client (browser) to the server in the message body. In contrast, GET requests include all required data in the URL. Forms in HTML can use either method by specifying method="POST" or method="GET" (default) in the <form> element. The method specified determines how form data is submitted to the server. When the method is GET, all form data is encoded into the URL, appended to the action URL as query string parameters. With POST, form data appears within the message body of the HTTP request.

GET can be bookmarked while POST cannot. GET is less secure and all parameters remain in browser history because they are part of the URL. POST parameters are in the body. POST parameters are not saved in browser history. GET parameters are limited to what we can stuff into the URL. POST can send parameters including uploading files to the server. POST generally has no data length restrictions but GET URL length is generally limited to 2048 characters. GET method should not be used when sending sensitive information like passwords or credit card details. POST method should be used for these situations. GET is used for fetching documents and OK to cache. POST is used for updating data and not OK to cache. POST requests change the server. GET shouldn't change the server.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server. Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol. When receiving an HTTP request, a server can send a Set-Cookie header with the response. The cookie is usually stored by the browser, and then the cookie is sent with requests made to the same server inside a Cookie HTTP header. An expiration date or duration can be specified, after which the cookie is no longer sent. Additionally, restrictions to a specific domain and path can be set, limiting where the cookie is sent.