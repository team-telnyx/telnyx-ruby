# frozen_string_literal: true

module Telnyx
  class PrivateWirelessGateway < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete

    OBJECT_NAME = "private_wireless_gateway".freeze
  end
end
