class profile::agent_nodes{
include docketagent,
dockeragent::node{'web.puppet.vm':}
dockeragent::node{'db.puppet.vm':}
}
