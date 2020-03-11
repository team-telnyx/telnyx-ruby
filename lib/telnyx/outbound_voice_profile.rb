# frozen_string_literal: true

module Telnyx
  class OutboundVoiceProfile < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "outbound_voice_profile".freeze
  end
end
