#!/bin/bash
curl -i -X POST http://localhost:10038/riak/schmoopy -H "Content-type: text/plain" --data-binary 'Something goes here'
