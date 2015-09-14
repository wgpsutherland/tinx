TinX
=====

"T in X" - A simple time constants library, written in CoffeeScript, usable in JavaScript.

Great for easily readable code involving time.

## Installation

    $ npm install tinx
    
## Use

    var t = require('tinx');
    
    console.log(t.milliseconds.in.a.second); // 1000
    console.log(t.seconds.in.an.hour); // 3600
    console.log(t.hours.in.a.day); // 24
    
## Documentation

### milliseconds

* in.a.millisecond
* in.a.second
* in.a.minute
* in.an.hour
* in.a.day
* in.a.week
* in.a.year
    
### seconds

* in.a.second
* in.a.minute
* in.an.hour
* in.a.day
* in.a.week
* in.a.year
    
### minutes

* in.a.minute
* in.an.hour
* in.a.day
* in.a.week
* in.a.year
    
### hours

* in.an.hour
* in.a.day
* in.a.week
* in.a.year
    
### days

* in.a.day
* in.a.week
* in.a.year
