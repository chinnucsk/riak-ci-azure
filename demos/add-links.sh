#!/bin/bash
curl -i -X PUT http://localhost:10018/riak/people/oj -H "Content-type: application/json" --data-binary @oj.json \
  -H 'Link: </riak/people/amy>; riaktag="wife"'

curl -i -X PUT http://localhost:10018/riak/people/amy -H "Content-type: application/json" --data-binary @amy.json \
  -H 'Link: </riak/people/oj>; riaktag="husband"'
