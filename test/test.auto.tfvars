services = {
  "consul-ingress-gateway-bdfcf7bb-vpxwl.ip-10-0-1-20.us-west-2.compute.internal.cloud" : {
    id              = "consul-ingress-gateway-bdfcf7bb-vpxwl"
    name            = "ingress-gateway"
    kind            = "ingress-gateway"
    address         = "10.0.1.20"
    port            = 30909
    meta            = {}
    tags            = []
    namespace       = null
    status          = "passing"
    node            = "ip-10-0-1-20.us-west-2.compute.internal"
    node_id         = "ac82db86-fda8-a7f8-538d-3972c1766bcb"
    node_address    = "10.0.1.21"
    node_datacenter = "cloud"
    node_tagged_addresses = {
      lan      = "10.0.1.21"
      lan_ipv4 = "10.0.1.21"
      wan      = "10.0.1.21"
      wan_ipv4 = "10.0.1.21"
    }
    node_meta = {
      consul-network-segment = ""
      host-ip                = "10.0.1.20"
      pod-name               = "consul-m9wxp"
    }
    cts_user_defined_meta = {}
  },
  "my-application-575957b495-lz2c7-my-application.ip-10-0-1-20.us-west-2.compute.internal.cloud" : {
    id      = "my-application-575957b495-lz2c7-my-application"
    name    = "my-application"
    kind    = ""
    address = "10.0.1.23"
    port    = 9090
    meta = {
      host          = "my-application.my-company.net"
      k8s-namespace = "default"
      pod-name      = "my-application-575957b495-lz2c7"
      weight        = "0"
    }
    tags            = []
    namespace       = null
    status          = "passing"
    node            = "ip-10-0-1-20.us-west-2.compute.internal"
    node_id         = "ac82db86-fda8-a7f8-538d-3972c1766bcb"
    node_address    = "10.0.1.21"
    node_datacenter = "cloud"
    node_tagged_addresses = {
      lan      = "10.0.1.21"
      lan_ipv4 = "10.0.1.21"
      wan      = "10.0.1.21"
      wan_ipv4 = "10.0.1.21"
    }
    node_meta = {
      consul-network-segment = ""
      host-ip                = "10.0.1.20"
      pod-name               = "consul-m9wxp"
    }
    cts_user_defined_meta = {
      host   = "my-application.my-company.net"
      weight = "0"
    }
  },
  "my-application-575957b495-b9g8d-my-application.ip-10-0-1-42.us-west-2.compute.internal.cloud" : {
    id      = "my-application-575957b495-b9g8d-my-application"
    name    = "my-application"
    kind    = ""
    address = "10.0.1.39"
    port    = 9090
    meta = {
      host          = "my-application.my-company.net"
      k8s-namespace = "default"
      pod-name      = "my-application-575957b495-b9g8d"
      weight        = "0"
    }
    tags            = []
    namespace       = null
    status          = "passing"
    node            = "ip-10-0-1-42.us-west-2.compute.internal"
    node_id         = "8097f1d1-a454-4d2e-104a-659487f8c514"
    node_address    = "10.0.1.43"
    node_datacenter = "cloud"
    node_tagged_addresses = {
      lan      = "10.0.1.43"
      lan_ipv4 = "10.0.1.43"
      wan      = "10.0.1.43"
      wan_ipv4 = "10.0.1.43"
    }
    node_meta = {
      consul-network-segment = ""
      host-ip                = "10.0.1.42"
      pod-name               = "consul-vp5rp"
    }
    cts_user_defined_meta = {
      host   = "my-application.my-company.net"
      weight = "0"
    }
  },
  "my-application-575957b495-2mx5s-my-application.ip-10-0-1-5.us-west-2.compute.internal.cloud" : {
    id      = "my-application-575957b495-2mx5s-my-application"
    name    = "my-application"
    kind    = ""
    address = "10.0.1.14"
    port    = 9090
    meta = {
      host          = "my-application.my-company.net"
      k8s-namespace = "default"
      pod-name      = "my-application-575957b495-2mx5s"
      weight        = "0"
    }
    tags            = []
    namespace       = null
    status          = "passing"
    node            = "ip-10-0-1-5.us-west-2.compute.internal"
    node_id         = "d3fc54c2-39f8-0d37-584e-bc01a08ad8ea"
    node_address    = "10.0.1.13"
    node_datacenter = "cloud"
    node_tagged_addresses = {
      lan      = "10.0.1.13"
      lan_ipv4 = "10.0.1.13"
      wan      = "10.0.1.13"
      wan_ipv4 = "10.0.1.13"
    }
    node_meta = {
      consul-network-segment = ""
      host-ip                = "10.0.1.5"
      pod-name               = "consul-zfll2"
    }
    cts_user_defined_meta = {
      host   = "my-application.my-company.net"
      weight = "0"
    }
  }
}