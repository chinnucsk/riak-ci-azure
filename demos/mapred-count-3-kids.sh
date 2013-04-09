#!/bin/bash
curl -i -X POST http://localhost:10038/mapred -H "Content-type: application/json" --data-binary @mapred-count-3-kids.json
