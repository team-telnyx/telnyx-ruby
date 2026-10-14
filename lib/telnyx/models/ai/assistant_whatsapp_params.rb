# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#whatsapp
      class AssistantWhatsappParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute content
        #   Instruction for the assistant, including the values for the template variables,
        #   e.g. `Send the login verification code 482913 to the customer.`
        #
        #   @return [String]
        required :content, String

        # @!attribute from
        #   WhatsApp number on your account to send from, in E.164 format. Its messaging
        #   profile must have this assistant configured.
        #
        #   @return [String]
        required :from, String

        # @!attribute to
        #   Customer to message, as an E.164 phone number or a WhatsApp business-scoped user
        #   ID (BSUID).
        #
        #   @return [String]
        required :to, String

        # @!attribute conversation_metadata
        #   Metadata stored on the conversation. Keys starting with `telnyx_` and the
        #   `assistant_id` key are reserved.
        #
        #   @return [Hash{Symbol=>String, Integer, Boolean}, nil]
        optional :conversation_metadata,
                 -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::AssistantWhatsappParams::ConversationMetadata] }

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!method initialize(assistant_id:, content:, from:, to:, conversation_metadata: nil, idempotency_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantWhatsappParams} for more details.
        #
        #   @param assistant_id [String]
        #
        #   @param content [String] Instruction for the assistant, including the values for the template variables,
        #
        #   @param from [String] WhatsApp number on your account to send from, in E.164 format. Its messaging pro
        #
        #   @param to [String] Customer to message, as an E.164 phone number or a WhatsApp business-scoped user
        #
        #   @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}] Metadata stored on the conversation. Keys starting with `telnyx_` and the `assis
        #
        #   @param idempotency_key [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module ConversationMetadata
          extend Telnyx::Internal::Type::Union

          variant String

          variant Integer

          variant Telnyx::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Integer, Boolean)]
        end
      end
    end
  end
end
