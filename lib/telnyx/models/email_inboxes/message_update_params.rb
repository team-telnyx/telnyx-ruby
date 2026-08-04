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
        #   Set to `true` for server time, an ISO 8601 timestamp for an explicit read time,
        #   or `null` to mark unread.
        #
        #   @return [Boolean, Time, Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt, nil]
        required :read_at, union: -> { Telnyx::EmailInboxes::MessageUpdateParams::ReadAt }

        # @!method initialize(inbox_id:, message_id:, read_at:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::MessageUpdateParams} for more details.
        #
        #   @param inbox_id [String]
        #
        #   @param message_id [String]
        #
        #   @param read_at [Boolean, Time, Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt, nil] Set to `true` for server time, an ISO 8601 timestamp for an explicit read time,
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Set to `true` for server time, an ISO 8601 timestamp for an explicit read time,
        # or `null` to mark unread.
        module ReadAt
          extend Telnyx::Internal::Type::Union

          variant const: -> { Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt::TRUE }

          variant Time

          # @!method self.variants
          #   @return [Array(Boolean, Time)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.nilable(T.any(Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::TaggedBoolean, Time)) }
          end

          # @!group

          TRUE = true

          # @!endgroup
        end
      end
    end
  end
end
