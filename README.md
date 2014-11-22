swiftzmq
========

Clean, Safe, Well-written ZeroMQ (zmq) bindings for Swift using the excellent czmq library

Status
------

Still fighting the build process. Hopeful I can get most of it implemented soon once I'm over that hurdle.

ZSock: In progress
Everything else: Not done at all

Aims
----

* To be easy to use. We hide low-level details and provide a pure swift API
* To support multiple versions of zmq. czmq handles this for us.
* Support for all features of czmq (eventually)

Contributing
------------

Please, feel free to fork. Bear in mind this is a very new project and I'm new
to swift (although not to programming), so the code may lack a little polish.

Coding standards
----------------

* 4 spaces, braces on the same line
* Hide c types from library users
* RAII: Resource Acquisition Is Initialisation. Or wrap the process to achieve the same effect
* Clean up after yourself in destructors
* "Do the right thing" with regards to managing memory
* Favour horizontal composition with protocols over inheritance
* Keep it simple
* Try not to make a mess :)

Copyright and License
---------------------

    Copyright (c) 2014 James Laver

This software is licensed under the permissive MIT License:

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
