#!/bin/bash
curl -i -X DELETE http://localhost:10048/riak/dump/foo
curl -i -X GET http://localhost:10048/riak/dump/foo
