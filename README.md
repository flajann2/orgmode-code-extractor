<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#orgheadline7">1. orgmode-code-extractor</a>
<ul>
<li><a href="#orgheadline1">1.1. Introduction</a></li>
<li><a href="#orgheadline2">1.2. Installation</a></li>
<li><a href="#orgheadline3">1.3. Usage</a></li>
<li><a href="#orgheadline4">1.4. Motivation behind this project</a></li>
<li><a href="#orgheadline5">1.5. Contributing to orgmode-code-extractor</a></li>
<li><a href="#orgheadline6">1.6. Copyright</a></li>
</ul>
</li>
</ul>
</div>
</div>

# orgmode-code-extractor<a id="orgheadline7"></a>

## Introduction<a id="orgheadline1"></a>

Orgmode-code-extractor takes as a parameter your orgmode file, and optionally a target directory, and will
spit out the extracted code in your code blocks using the name of 

    #+name:

with the extension of the first word following the #+BEGIN<sub>SRC</sub>.
For example, if you have in your org file:

    # +name: Creepy.people
    # +BEGIN_SRC javascript
      {
        "name": "Herman Munster",
        "address": "2121 Mockingbird Lane"
      }
    # +END_SRC

Then a file with the name of "Creepy.people.javascript" with the contents of:

    {
      "name": "Herman Munster",
      "address": "2121 Mockingbird Lane"
    }

will be created.

## Installation<a id="orgheadline2"></a>

Installation is accomplished by doing:

    gem install orgmode-code-extractor

## Usage<a id="orgheadline3"></a>

By default, orgmode-code-extractor will attempt to write the
output to a "./oce" directory, which must be present or it
will fail. You can specify your own target directory or
just create the "./oce" one in your current directory. To get
more information on how you can specify your own, type:

    orgmode-code-extractor help extract

at the commandline.

To run this on your orgmode files,

    orgmode-code-extractor extract yourfile1.org yourfile2.org ...

and it will create the extractions nicely.

## Motivation behind this project<a id="orgheadline4"></a>

There are many ways to actually excute orgmode code blocks, but in my
case, I am using orgmode to document a JSON api. There was no clean way
availabe at the time to extract these nicely, so I wrote this tool. Just
a few lines of code that saved my sanity.

You will also note that this document is itself an orgmode file, which
was used to test the orgmode-code-extractor. Yes, I eat my own dog food. lol

## Contributing to orgmode-code-extractor<a id="orgheadline5"></a>

Your contributions are more than welcome, as this was something I threw together
quicky in just a couple of hours. It could use better error handling and many other
options I did not have the time to throw in. So just the usual branching and pull 
request bit as outlined below!

-   Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
-   Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
-   Fork the project.
-   Start a feature/bugfix branch.
-   Commit and push until you are happy with your contribution.
-   Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
-   Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright<a id="orgheadline6"></a>

Copyright (c) 2015 Fred Mitchell. See LICENSE.txt for
further details.
