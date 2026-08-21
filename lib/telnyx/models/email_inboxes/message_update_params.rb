# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Messages#update
      class MessageUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute message_id
        #
        #   @return [String]
        required :message_id, String

        # @!attribute read_at
        #
        #   @return [Boolean, Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime, Time]
        required :read_at, union: -> { Telnyx::EmailInboxes::MessageUpdateParams::ReadAt }

        # @!method initialize(inbox_id:, message_id:, read_at:, request_options: {})
        #   @param inbox_id [String]
        #   @param message_id [String]
        #   @param read_at [Boolean, Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime, Time]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module ReadAt
          extend Telnyx::Internal::Type::Union

          variant enum: -> { Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime }

          variant Time

          module ServerReadTime
            extend Telnyx::Internal::Type::Enum

            TRUE = true

            # @!method self.values
            #   @return [Array<Boolean>]
          end

          # @!method self.variants
          #   @return [Array(Boolean, Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime, Time)]
        end
      end
    end
  end
end
