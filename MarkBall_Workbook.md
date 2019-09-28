#### 1. Research the development of the internet from 1980 to today. You must describe at least FIVE key events in the development of the internet. You can refer to events, people of significance, or technologies and how they have changed over time.

Word count guide 300 - 500 words.
- 1983: TCP/IP (transmission control protocol/internet protocol) is standardised. TCP/IP is the set of rules that specifies how data is exchanged over the internet. The TCP portion controls how the data is broken into packets by the sender and then reassembled correctly by the receiver. The IP portion defines the address that the packets will be sent to and the route that each packet will take 

- 1989: Tim Berners-Lee begins work on a project to allow millions of computers to connect using an emerging technology called hypertext. In this project, he creates three fundamental technologies that are used in the web even today: 
    - HTML, hypertext markup language used to organise information on webpages.
    - URI, uniform resource identifiers used to uniquely identify each resource on the web.
    - HTTP, hypertext transfer protocol which is used for the retrieval of linked resources across the web.

- 1989: the first commercial ISP - The World, operated by a small software company called Software Tool & Die - begins serving customers. Prior to this, the internet was reserved for research and military use. This was met with controversy as Government institutions and universities blocked or attempted to shut down The World as they believed that the internet should remain exclusively for research and military use, not commercial. This controversy was resolved when the National Science Foundation, a US government agency which supports research in all non-medical fields of science and engineering, granted Software Tool & Die permission to provide public internet access.

- 1990: the first internet search engine, Archie, was developed by Alan Emtage at McGill University. Being the first-ever internet search engine, Archie was not as sophisticated as modern search engines like Google. Archie functioned by taking a string input or regular expression from the user and retrieving a file matching the query. Importantly, Archie did not index the content of files and therefore only the names of files were searchable.

- 1991: the first website is built by Tim Berners-Lee at http://info.cern.ch/. The website ran on a NeXT computer at CERN. It provided an explanation about what the world wide web was, how one could own a browser, technical information about the internet, people involved in the project, and even allowed people to access the code for the internet. The website was built using raw HTML and includes all the default styling that HTML has even today, such as Times New Roman font, left-aligned elements, and blue underlined text for links.

#### 2. Define the features of the following technologies that are essential in terms of the development of the internet:
- packets
- IP addresses (IPv4 and IPv6)
- routers and routing
- domains and DNS

Explain how each technology has contributed to the development of the internet.

Word count guide: 50 - 100 words per dot point

###### Packets
Packets are formatted units of data carried by a packet-switched network. A packet consists of control information and user data. Control information is the data for delivering the packet e.g. the sender’s IP address, receiver’s IP address, or number of packets the data has been broken into. A packet is usually 1000-1500 bytes of data. Packets have contributed to the development of the internet because splitting transmitted data into packets and having each packet choose the best available route, instead of all having a pre-defined route, makes the network more efficient. As the route that each packet will take is determined individually on a millisecond-by-millisecond basis, the network can balance the load across different piece of equipment and if there is a problem with one piece of network equipment, the packets can be routed around the problem, ensuring delivery of all the user data.

###### IP addresses (IPv4 and IPv6)
An IP (internet protocol) address is a unique number assigned to each device connected to a computer network that uses IP for communication. IPv4 defines as IP addresses as a 32-bit number, however as the internet grew and more unique addresses were required, IPv6 using 128 bits for addresses was developed. The number of available IPv6 addresses is 2<sup>128</sup> or approximately 3.4 x 10<sup>38</sup>. IP addresses have contributed to the development of the internet by allowing each node on the network to have unique addresses for communication.

###### Routers and routing
Routing is the process of selecting a path for traffic in a network and routers are the devices within the network that performs this function. On the internet, routers direct packets to travel down specific cables to other routers which perform the same function, eventually directing the packets to their intended destination. Routers have algorithms which consider throughput, overhead, stability and other factors to select the best route and stores these routes in a table. Routing has contributed to the development of the internet by allowing information in the form of packets to be delivered as fast as possible.

###### Domains and DNS
A domain name server maintains a directory of domain names and translates them into IP addresses. Each website has an IP address, for example the IP address of google is 172.217.25.142, which can be typed into the URL bar to access the site. However this is difficult for a human being to remember. Domain names allow the user to enter a name like ‘google.com’ into the URL bar, and as the DNS keeps a record of the IP addresses associated with that name, this connects to the website. DNS contributed to the development of the internet by making web browsing simpler for human beings, who only need to remember the name of a website instead of the IP address.

#### 3. Define the features of the following technologies that are essential in terms of the development of the internet:
- TCP (word count guide: 150 - 300 words)
- HTTP and HTTPS (word count guide: 150 - 300 words)
- web browsers (requests, rendering and developer tools) (200 - 300 words)

Explain how each technology has contributed to the development of client and server communication over the internet (50 - 150 words for each technology)

Word count guide: see above.

###### TCP
TCP (transmission control protocol) is a standard that defines how to establish and maintain a connection between application programs which exchange data. TCP works with IP to define how computers send packets of data to each other. 
The major feature of TCP is the reliability of the service, which is achieved by a system of positive acknowledgement with re-transmission. At the beginning of the communication, the sender will tell the receiver the number of packets and their order. This allows the receiver to know if packets have been lost during transmission. The receiver sends a message to the sender as it received packets of data, with the sender keeping a record of these acknowledgements. If an acknowledgement is not sent within a certain period, the packet is sent again. This feature makes the service very reliable, as there are checks and acknowledgement that data has been received, but this comes at the cost of speed. This technology has contributed to the development of client and server communication over the internet by creating a method to communication data which is reliable.

###### HTTP and HTTPS
HTTP and HTTPS stand for hypertext transfer protocol and hypertext transfer protocol secure. Communication between clients (e.g. a web browser) and servers on the internet is done by requests and responses. When a client wants to receive data, for example to display a webpage, it sends an HTTP request to the web server, which then runs an application to process the request and sends an HTTP response back. This response contains the data, which in the example of a webpage could be an HTML page.

##### Web browsers
A web browser is a software application which fetches information from the internet and displays them to the user on their device. The most popular web browsers are Google Chrome, Mozilla Firefox, and Internet Explorer. The browsing experience begins when the user enters a URL, usually an HTTP or HTTPS, which requests the data needed to display the webpage. Once this data is received, the browser’s rendering engine transforms the information received, such as HTML and CSS code, into a visual representation on the user’s device. Different engines power different browsers. For example, the engines which power the three most popular browsers are Blink (Google Chrome), Gecko (Mozilla Firefox), and Trident (Internet Explorer). Each browser has also released developer tools. These developer tools provides a multitude of functionality: allowing the user to view and edit the webpage’s HTML and CSS, view and debug network activity, view the website’s performance (e.g. load speed), view memory usage and leaks, inspect all applications that are loaded, view security information, and audit the webpage for issues such as accessibility and performance . An example of the information provided by the developer tools for google chrome are provided in Figure 1.

![devtools](/docs/chrome_devtools.jpg)

#### 4. Identify THREE data structures used in the Ruby programming language and explain the reasons for using each.

Word count guide: 50 - 100 words on each data structure

A data structure is a format for the organisation, management and storage of information which enables access and modification.

##### Array
An array is an ordered list of values. Each element of an array is accessed by its index number starting from ᴢero (e.g. the number 1 in the array numbers = [1, 2, 3] would be accessed with numbers[0]). An array would be used where the order of elements matters and all the information in the array is similar, meaning that a single array might hold multiple names, but a single array would not be the ideal data structure to hold names, ages, addresses, etc as it would be confusing to query using only an index.

##### Hash
A hash is an unordered list of key-value pairs. Each element of a hash is accessed by its key. A hash would be used when there are multiple pieces of data that are associated with one object. An example of a hash containing information about a person is the following:

> info = { name: “Mark”, occupation: “student”, age: 30 }

A hash has the advantage compared to an array of being more readable as the keys can be named to describe the data held in the value. 


##### Queue
A queue is like an array in that it is an ordered list of values, with two differences being that elements can only be added to the end of the queue, and elements can only be removed from the front of the list. This is an implementation of FIFO (first in first out). Elements cannot be added or removed from intermediate locations in the stack. A queue would be used when you wish restrict the manipulation of the data to FIFO or retrieve elements in the same order they were entered in.

#### 5. Describe the features of interpreters and compilers and how they are different.

Word count guide: 100 - 200 words on each way code is executed.

Compiled languages are written in one language and before being run are translated into another language. Once translation is complete the executable code may be set aside or run. Common compiled languages include C, C++, and Rust. 

Interpreted languages execute without compiling the entire source code into a machine-readable form. Instead each statement is translated into a sequence of subroutines and then into another language. Perhaps confusingly, the step of compilation into machine readable code is still performed but occurs at runtime rather than as a separate action. Examples of interpreted languages are Ruby, Python, and PHP.

This difference between compiled and interpreted leads to three main differences:
- Error handling. Compiled languages compile the entire source code and when throws errors only after the compilation is complete. Interpreted languages compile line-by-line and will throw an error and halt the remaining execution of the program when an error is encountered.
- Speed. Compiled languages run faster than interpreted languages because interpreted languages have the additional step of turning the code into a form the computer can execute at runtime, rather than having machine-executable code already compiled.  
- Platform independence. For a compiled language, a program compiled on a Windows computer cannot simply be copied to a Linux computer and run correctly. The program would have to be re-compiled from the source code on the second machine to run correctly. For an interpreted language, as long as the language (e.g. Ruby) is installed on the machine, the code written in that language can be executed on computers running difference operating systems without an additional compilation step.

#### 6. Identify TWO commonly used programming languages and explain the benefits and drawbacks of each.

Word count guide: 200 - 400 words on each language

<b>Ruby</b> is a general-purpose programming language which has been used to build some well-known projects such as Twitter and Shopify. 

##### Benefits

- Human-readable syntax. Ruby was built with the intention of being a high-level language which can be written similarly to plain English. This is achieved by various shortcuts such as allowing the parentheses on certain methods to be omitted (e.g. 
>print "hello"

can be written instead of

>print("hello")

and allowing single-line conditionals e.g.

>print “something” if x == 1

- There is an extensive community of Ruby developers and free packages, called gems, which any user can download and implement in their own projects. Gems are simple to include using a command line argument and an entire ecosystem of developers producing, testing, and modifying gems means that the best gems are likely to be iterated upon and promoted. These gems speed up the development process and allow faster deployment of projects as they allow the programmer to save time on writing components of their programs.

- Ruby is an object-oriented programming language, which has the benefits of modularity (if there is a problem with a certain object, we know we need to debug the code for that class only), and use of inheritance which allows us to avoid re-writing code.


- The rails framework which works with Ruby is another advantage. Rails is a framework written in Ruby which provides default structure for commonly required applications like databases, webpages, and the MVC model. The existence of rails makes developing and launching web applications much faster and easier.

##### Drawbacks

- As an interpreted language, Ruby has slower Runtime speed compared to many other languages. The newest releases of Ruby are improving this, however Ruby still runs slower than many of its competitors such as Lisp, PHP, and compiled languages.

- The rails framework lacks flexibility. Ruby comes with a lot of default objects, which is an advantage for 
Ruby is poor for developing GUI. Attempts have been made to develop GUI in Ruby and gems which make the process simpler have been developed, but Ruby is still considered a poor choice for this purpose.
