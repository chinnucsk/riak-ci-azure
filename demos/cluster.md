Making a Riak Cluster
=====================

# show some config
vim rel/files/app.config
  - show riak_kv -> add_paths
  - show riak_kv -> storage_backend
  - show riak_kv -> map_js_vm_count
  - show riak_kv -> reduce_js_vm_count
  - show riak_search -> enabled

# build
make && make devrel

# fire up the nodes
cd dev
ulimit -n 4096
dev1/bin/riak start
dev2/bin/riak start
dev3/bin/riak start
dev4/bin/riak start

# show that the node thinks it's alone
dev1/bin/riak-admin status | grep connected_nodes

# write something stupid
curl -X PUT http://localhost:10018/riak/dump/foo -d 'Some value' -H 'Content-type: text/plain'
curl -i -X GET http://localhost:10018/riak/dump/foo

# plan the cluster
dev2/bin/riak-admin cluster join dev1
dev3/bin/riak-admin cluster join dev1
dev4/bin/riak-admin cluster join dev1
dev1/bin/riak-admin cluster plan

# commit the changes
dev1/bin/riak-admin cluster commit

# validate the changes
dev/bin/riak-admin ring_status
dev/bin/riak-admin ringready

# show that the data is available through other nodes
curl -i -X GET http://localhost:10038/riak/dump/foo

