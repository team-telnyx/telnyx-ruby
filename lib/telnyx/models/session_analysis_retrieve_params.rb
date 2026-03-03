# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SessionAnalysis#retrieve
    class SessionAnalysisRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute record_type
      #
      #   @return [String]
      required :record_type, String

      # @!attribute date_time
      #   ISO 8601 timestamp to narrow index selection for faster lookups.
      #
      #   @return [Time, nil]
      optional :date_time, Time

      # @!attribute expand
      #   Controls what data to expand on each event node.
      #
      #   @return [Symbol, Telnyx::Models::SessionAnalysisRetrieveParams::Expand, nil]
      optional :expand, enum: -> { Telnyx::SessionAnalysisRetrieveParams::Expand }

      # @!attribute include_children
      #   Whether to include child events in the response.
      #
      #   @return [Boolean, nil]
      optional :include_children, Telnyx::Internal::Type::Boolean

      # @!attribute max_depth
      #   Maximum traversal depth for the event tree.
      #
      #   @return [Integer, nil]
      optional :max_depth, Integer

      # @!method initialize(record_type:, date_time: nil, expand: nil, include_children: nil, max_depth: nil, request_options: {})
      #   @param record_type [String]
      #
      #   @param date_time [Time] ISO 8601 timestamp to narrow index selection for faster lookups.
      #
      #   @param expand [Symbol, Telnyx::Models::SessionAnalysisRetrieveParams::Expand] Controls what data to expand on each event node.
      #
      #   @param include_children [Boolean] Whether to include child events in the response.
      #
      #   @param max_depth [Integer] Maximum traversal depth for the event tree.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Controls what data to expand on each event node.
      module Expand
        extend Telnyx::Internal::Type::Enum

        RECORD = :record
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
