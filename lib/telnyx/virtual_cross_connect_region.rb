# frozen_string_literal: true

module Telnyx
  class VirtualCrossConnectRegion < APIResource
    extend APIOperations::List

    OBJECT_NAME = "virtual_cross_connect_region".freeze
  end
end
