# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # @see Telnyx::Resources::EmailInboxes::Messages::Labels#delete_all
        class LabelDeleteAllResponse < Telnyx::Internal::Type::BaseModel
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
end
