[![Build Status](https://travis-ci.org/mgduk/normalize-version.svg?branch=master)](https://travis-ci.org/mgduk/normalize-version)
[![GitHub issues](https://img.shields.io/github/issues/mgduk/normalize-version.svg)](https://github.com/mgduk/normalize-version/issues)

Formats a version number to be a required number of points

Examples
--------
```js
normalize_version = require('normalize-vresion')
normalize_version('1', 3)
// => '1.0.0'
normalize_version('1.2', 3)
// => '1.2.0'
normalize_version('1.2.3', 3)
// => '1.2.3'
normalize_version('1.2.3', 4)
// => '1.2.3.0'
normalize_version('1.2.3', 2)
// => '1.2'
normalize_version('1.2.3', 1)
// => '1'
normalize_version(0, 3)
// => '0.0.0'
normalize_version('foo')
// => null
```

Tests
-----
```
npm test
```

Licence
-------
```
MIT License

Copyright (c) 2016 Matt Dolan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```