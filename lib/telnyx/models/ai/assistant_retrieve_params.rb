# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#retrieve
      class AssistantRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute call_control_id
        #   Filter results by call control id.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute fetch_dynamic_variables_from_webhook
        #   Whether to fetch dynamic variables from the configured webhook.
        #
        #   @return [Boolean, nil]
        optional :fetch_dynamic_variables_from_webhook, Telnyx::Internal::Type::Boolean

        # @!attribute from
        #   Start of the filter range.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute to
        #   End of the filter range.
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(assistant_id:, call_control_id: nil, fetch_dynamic_variables_from_webhook: nil, from: nil, to: nil, request_options: {})
        #   @param assistant_id [String]
        #
        #   @param call_control_id [String] Filter results by call control id.
        #
        #   @param fetch_dynamic_variables_from_webhook [Boolean] Whether to fetch dynamic variables from the configured webhook.
        #
        #   @param from [String] Start of the filter range.
        #
        #   @param to [String] End of the filter range.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
