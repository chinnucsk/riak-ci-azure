#!/bin/bash
# format: /bucket,name,keep
curl -i -X GET http://localhost:10038/riak/people/amy/_,husband,1

