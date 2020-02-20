# frozen_string_literal: true

module Telnyx
  class FQDNConnection < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "fqdn_connection".freeze
  end
end
