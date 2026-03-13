# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Queues#retrieve
    class QueueRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute queue_name
      #
      #   @return [String]
      required :queue_name, String

      # @!method initialize(queue_name:, request_options: {})
      #   @param queue_name [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
