# frozen_string_literal: true

module Telnyx
  class MobilePushCredential < APIResource
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "mobile_push_credential".freeze
  end
end
