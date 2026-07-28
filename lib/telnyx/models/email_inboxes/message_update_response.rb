# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Messages#update
      class MessageUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::InboundMessage]
        required :data, -> { Telnyx::InboundMessage }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::InboundMessage]
      end
    end
  end
end
