# frozen_string_literal: true

module Telnyx
  module Models
    module Queues
      # @see Telnyx::Resources::Queues::Calls#update
      class CallUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute queue_name
        #
        #   @return [String]
        required :queue_name, String

        # @!attribute keep_after_hangup
        #   Whether the call should remain in queue after hangup.
        #
        #   @return [Boolean, nil]
        optional :keep_after_hangup, Telnyx::Internal::Type::Boolean

        # @!method initialize(queue_name:, keep_after_hangup: nil, request_options: {})
        #   @param queue_name [String]
        #
        #   @param keep_after_hangup [Boolean] Whether the call should remain in queue after hangup.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
