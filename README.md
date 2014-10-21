# Sunspot

## sunspot_solr (forked for chinese manipulation)

It's a fork version from [sunspot/sunspot](https://github.com/sunspot/sunspot). I upgraded the solr instance from 3.5 to 4.3.1 in order to integrate with [MMSeg4j](https://github.com/chenlb/mmseg4j-solr) (1.9.1). You can find documents for general usage from [sunspot/sunspot](https://github.com/sunspot/sunspot) page.

## Installation

add below into your Gemfile.  

`gem 'sunspot_solr', git: 'git@github.com:hrs113355/sunspot_solr.git'`  

Working with sunspot_rails, you can add below  

`gem 'sunspot_rails', "~> 2.0.0"`

or  

``gem 'sunspot_rails', git: 'git@github.com:hrs113355/sunspot_solr.git'`  


## Usage

* To start (background): `rake sunspot:solr:start`  

* To run (foreground): `rake sunspot:solr:run`  

* To stop: `rake sunspot:solr:stop`  


## Changes

* Update solr instance to 4.3.1 (To integrage with [MMSeg4j 1.9.1](https://github.com/chenlb/mmseg4j-solr))  

* Forced `mm = 100%` and `default.Operator=AND` to solve problem with tokenized chinese words indexing and querying.  (For more, see #1)

## Todos
* Default built-in MMSeg4j 
* Default configuration for chinese manipulation
* More flexible way to solve tokenized chinese words indexing and querying problem.

## License

Sunspot is distributed under the MIT License, copyright (c) 2008-2013 Mat Brown
