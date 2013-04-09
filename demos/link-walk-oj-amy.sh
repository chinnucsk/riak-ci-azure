#!/bin/bash
# format: /bucket,name,keep
curl -i -X GET http://localhost:10028/riak/people/oj/people,wife,0/_,husband,1

