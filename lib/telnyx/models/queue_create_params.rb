# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Queues#create
    class QueueCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute queue_name
      #   The name of the queue. Must be between 1 and 255 characters.
      #
      #   @return [String]
      required :queue_name, String

      # @!attribute max_size
      #   The maximum number of calls allowed in the queue.
      #
      #   @return [Integer, nil]
      optional :max_size, Integer

      # @!method initialize(queue_name:, max_size: nil, request_options: {})
      #   @param queue_name [String] The name of the queue. Must be between 1 and 255 characters.
      #
      #   @param max_size [Integer] The maximum number of calls allowed in the queue.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
