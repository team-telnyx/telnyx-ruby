# frozen_string_literal: true

module Telnyx
  class TelephonyCredential < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete

    OBJECT_NAME = "telephony_credential".freeze
  end
end
