# frozen_string_literal: true

module Telnyx
  class ChannelZone < APIResource
    extend APIOperations::List
    extend APIOperations::NestedResource
    include APIOperations::Save
    OBJECT_NAME = "channel_zone".freeze
  end
end
