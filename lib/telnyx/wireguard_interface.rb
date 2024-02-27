# frozen_string_literal: true

module Telnyx
  class WireguardInterface < APIResource
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "wireguard_interface".freeze
  end
end
