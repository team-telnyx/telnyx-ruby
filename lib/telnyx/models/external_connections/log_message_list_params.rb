# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::LogMessages#list
      class LogMessageListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Filter parameter for log messages (deepObject style). Supports filtering by
        #   external_connection_id and telephone_number with eq/contains operations.
        #
        #   @return [Telnyx::Models::ExternalConnections::LogMessageListParams::Filter, nil]
        optional :filter, -> { Telnyx::ExternalConnections::LogMessageListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::LogMessageListParams} for more details.
        #
        #   @param filter [Telnyx::Models::ExternalConnections::LogMessageListParams::Filter] Filter parameter for log messages (deepObject style). Supports filtering by exte
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute external_connection_id
          #   The external connection ID to filter by or "null" to filter for logs without an
          #   external connection ID
          #
          #   @return [String, nil]
          optional :external_connection_id, String

          # @!attribute telephone_number
          #   Telephone number filter operations for log messages. Use 'eq' for exact matches
          #   or 'contains' for partial matches.
          #
          #   @return [Telnyx::Models::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber, nil]
          optional :telephone_number,
                   -> { Telnyx::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber }

          # @!method initialize(external_connection_id: nil, telephone_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ExternalConnections::LogMessageListParams::Filter} for more
          #   details.
          #
          #   Filter parameter for log messages (deepObject style). Supports filtering by
          #   external_connection_id and telephone_number with eq/contains operations.
          #
          #   @param external_connection_id [String] The external connection ID to filter by or "null" to filter for logs without an
          #
          #   @param telephone_number [Telnyx::Models::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber] Telephone number filter operations for log messages. Use 'eq' for exact matches

          # @see Telnyx::Models::ExternalConnections::LogMessageListParams::Filter#telephone_number
          class TelephoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   The partial phone number to filter log messages for. Requires 3-15 digits.
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute eq
            #   The phone number to filter log messages for or "null" to filter for logs without
            #   a phone number
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(contains: nil, eq: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber}
            #   for more details.
            #
            #   Telephone number filter operations for log messages. Use 'eq' for exact matches
            #   or 'contains' for partial matches.
            #
            #   @param contains [String] The partial phone number to filter log messages for. Requires 3-15 digits.
            #
            #   @param eq [String] The phone number to filter log messages for or "null" to filter for logs without
          end
        end
      end
    end
  end
end
