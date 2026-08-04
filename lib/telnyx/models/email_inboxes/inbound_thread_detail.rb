# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class InboundThreadDetail < Telnyx::Models::EmailInboxes::InboundThread
        # @!attribute messages
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::ThreadMessage>]
        required :messages, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::ThreadMessage] }

        # @!method initialize(messages:)
        #   @param messages [Array<Telnyx::Models::EmailInboxes::ThreadMessage>]
      end
    end
  end
end
