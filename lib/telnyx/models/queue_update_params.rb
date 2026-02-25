# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Queues#update
    class QueueUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute max_size
      #   The maximum number of calls allowed in the queue.
      #
      #   @return [Integer]
      required :max_size, Integer

      # @!method initialize(max_size:, request_options: {})
      #   @param max_size [Integer] The maximum number of calls allowed in the queue.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
