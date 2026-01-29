# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#list
    class ExternalConnectionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Filter parameter for external connections (deepObject style). Supports filtering
      #   by connection_name, external_sip_connection, id, created_at, and phone_number.
      #
      #   @return [Telnyx::Models::ExternalConnectionListParams::Filter, nil]
      optional :filter, -> { Telnyx::ExternalConnectionListParams::Filter }

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
      #   {Telnyx::Models::ExternalConnectionListParams} for more details.
      #
      #   @param filter [Telnyx::Models::ExternalConnectionListParams::Filter] Filter parameter for external connections (deepObject style). Supports filtering
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   If present, connections with <code>id</code> matching the given value will be
        #   returned.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute connection_name
        #
        #   @return [Telnyx::Models::ExternalConnectionListParams::Filter::ConnectionName, nil]
        optional :connection_name, -> { Telnyx::ExternalConnectionListParams::Filter::ConnectionName }

        # @!attribute created_at
        #   If present, connections with <code>created_at</code> date matching the given
        #   YYYY-MM-DD date will be returned.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute external_sip_connection
        #   If present, connections with <code>external_sip_connection</code> matching the
        #   given value will be returned.
        #
        #   @return [Symbol, Telnyx::Models::ExternalConnectionListParams::Filter::ExternalSipConnection, nil]
        optional :external_sip_connection,
                 enum: -> { Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection }

        # @!attribute phone_number
        #   Phone number filter for connections. Note: Despite the 'contains' name, this
        #   requires a full E164 match per the original specification.
        #
        #   @return [Telnyx::Models::ExternalConnectionListParams::Filter::PhoneNumber, nil]
        optional :phone_number, -> { Telnyx::ExternalConnectionListParams::Filter::PhoneNumber }

        # @!method initialize(id: nil, connection_name: nil, created_at: nil, external_sip_connection: nil, phone_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnectionListParams::Filter} for more details.
        #
        #   Filter parameter for external connections (deepObject style). Supports filtering
        #   by connection_name, external_sip_connection, id, created_at, and phone_number.
        #
        #   @param id [String] If present, connections with <code>id</code> matching the given value will be re
        #
        #   @param connection_name [Telnyx::Models::ExternalConnectionListParams::Filter::ConnectionName]
        #
        #   @param created_at [String] If present, connections with <code>created_at</code> date matching the given YYY
        #
        #   @param external_sip_connection [Symbol, Telnyx::Models::ExternalConnectionListParams::Filter::ExternalSipConnection] If present, connections with <code>external_sip_connection</code> matching the g
        #
        #   @param phone_number [Telnyx::Models::ExternalConnectionListParams::Filter::PhoneNumber] Phone number filter for connections. Note: Despite the 'contains' name, this req

        # @see Telnyx::Models::ExternalConnectionListParams::Filter#connection_name
        class ConnectionName < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, connections with <code>connection_name</code> containing the given
          #   value will be returned. Matching is not case-sensitive. Requires at least three
          #   characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ExternalConnectionListParams::Filter::ConnectionName} for more
          #   details.
          #
          #   @param contains [String] If present, connections with <code>connection_name</code> containing the given v
        end

        # If present, connections with <code>external_sip_connection</code> matching the
        # given value will be returned.
        #
        # @see Telnyx::Models::ExternalConnectionListParams::Filter#external_sip_connection
        module ExternalSipConnection
          extend Telnyx::Internal::Type::Enum

          ZOOM = :zoom
          OPERATOR_CONNECT = :operator_connect

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::ExternalConnectionListParams::Filter#phone_number
        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, connections associated with the given phone_number will be returned.
          #   A full match is necessary with a e164 format.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ExternalConnectionListParams::Filter::PhoneNumber} for more
          #   details.
          #
          #   Phone number filter for connections. Note: Despite the 'contains' name, this
          #   requires a full E164 match per the original specification.
          #
          #   @param contains [String] If present, connections associated with the given phone_number will be returned.
        end
      end
    end
  end
end
