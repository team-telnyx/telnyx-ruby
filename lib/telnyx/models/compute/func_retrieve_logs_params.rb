# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_logs
      class FuncRetrieveLogsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute end_time
        #   Return records at or before this RFC 3339 timestamp.
        #
        #   @return [Time, nil]
        optional :end_time, Time

        # @!attribute limit
        #   Maximum records to return.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute start_time
        #   Return records at or after this RFC 3339 timestamp.
        #
        #   @return [Time, nil]
        optional :start_time, Time

        # @!attribute type
        #   Log stream to return.
        #
        #   @return [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsParams::Type, nil]
        optional :type, enum: -> { Telnyx::Compute::FuncRetrieveLogsParams::Type }

        # @!method initialize(id:, end_time: nil, limit: nil, start_time: nil, type: nil, request_options: {})
        #   @param id [String]
        #
        #   @param end_time [Time] Return records at or before this RFC 3339 timestamp.
        #
        #   @param limit [Integer] Maximum records to return.
        #
        #   @param start_time [Time] Return records at or after this RFC 3339 timestamp.
        #
        #   @param type [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsParams::Type] Log stream to return.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Log stream to return.
        module Type
          extend Telnyx::Internal::Type::Enum

          RUNTIME = :runtime
          INVOCATIONS = :invocations

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
