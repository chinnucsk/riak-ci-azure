#!/bin/bash
curl -i -X PUT http://localhost:10018/riak/people/oj -H "Content-type: application/json" --data-binary @oj.json
curl -i -X PUT http://localhost:10018/riak/people/amy -H "Content-type: application/json" --data-binary @amy.json
