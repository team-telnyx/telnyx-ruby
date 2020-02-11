# frozen_string_literal: true

module Telnyx
  class FQDN < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "fqdn".freeze
  end
end
