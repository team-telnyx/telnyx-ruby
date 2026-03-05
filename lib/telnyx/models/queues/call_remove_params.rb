# frozen_string_literal: true

module Telnyx
  module Models
    module Queues
      # @see Telnyx::Resources::Queues::Calls#remove
      class CallRemoveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute queue_name
        #
        #   @return [String]
        required :queue_name, String

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!method initialize(queue_name:, call_control_id:, request_options: {})
        #   @param queue_name [String]
        #   @param call_control_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
