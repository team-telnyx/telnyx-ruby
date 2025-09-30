# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#retrieve
      class AssistantRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute fetch_dynamic_variables_from_webhook
        #
        #   @return [Boolean, nil]
        optional :fetch_dynamic_variables_from_webhook, Telnyx::Internal::Type::Boolean

        # @!attribute from
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute to
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(call_control_id: nil, fetch_dynamic_variables_from_webhook: nil, from: nil, to: nil, request_options: {})
        #   @param call_control_id [String]
        #   @param fetch_dynamic_variables_from_webhook [Boolean]
        #   @param from [String]
        #   @param to [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
