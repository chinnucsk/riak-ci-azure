#!/bin/bash
curl -i -X PUT http://localhost:10018/riak/people/oj -H "Content-type: application/json" --data-binary @oj.json \
  -H 'Link: </riak/people/amy>; riaktag="wife"' \
  -H 'x-riak-index-gender_bin: male' \
  -H 'x-riak-index-height_int: 180'

curl -i -X PUT http://localhost:10018/riak/people/amy -H "Content-type: application/json" --data-binary @amy.json \
  -H 'Link: </riak/people/oj>; riaktag="husband"' \
  -H 'x-riak-index-gender_bin: female' \
  -H 'x-riak-index-height_int: 165'
