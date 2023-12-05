# frozen_string_literal: true

module Telnyx
  class WireguardPeer < APIResource
    include APIOperations::Delete
    include APIOperations::Save
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    nested_resource_class_methods "config",
                                  path: "config",
                                  operations: [:list],
                                  instance_methods: { list: "config" }
    nested_resource_class_methods "allowed_ips",
                                  path: "allowed_ips",
                                  operations: [:list],
                                  instance_methods: { list: "allowed_ips" }

    OBJECT_NAME = "wireguard_peer".freeze
  end
end
