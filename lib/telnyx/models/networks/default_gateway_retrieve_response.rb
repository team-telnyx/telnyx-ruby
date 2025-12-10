# frozen_string_literal: true

module Telnyx
  module Models
    module Networks
      # @see Telnyx::Resources::Networks::DefaultGateway#retrieve
      class DefaultGatewayRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data>]
        #   @param meta [Telnyx::Models::PaginationMeta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute wireguard_peer_id
          #   Wireguard peer ID.
          #
          #   @return [String, nil]
          optional :wireguard_peer_id, String

          response_only do
            # @!attribute id
            #   Identifies the resource.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute created_at
            #   ISO 8601 formatted date-time indicating when the resource was created.
            #
            #   @return [String, nil]
            optional :created_at, String

            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute updated_at
            #   ISO 8601 formatted date-time indicating when the resource was updated.
            #
            #   @return [String, nil]
            optional :updated_at, String

            # @!attribute network_id
            #   Network ID.
            #
            #   @return [String, nil]
            optional :network_id, String

            # @!attribute status
            #   The current status of the interface deployment.
            #
            #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
            optional :status, enum: -> { Telnyx::InterfaceStatus }
          end

          # @!method initialize(id: nil, created_at: nil, record_type: nil, updated_at: nil, network_id: nil, status: nil, wireguard_peer_id: nil)
          #   @param id [String] Identifies the resource.
          #
          #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @param network_id [String] Network ID.
          #
          #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
          #
          #   @param wireguard_peer_id [String] Wireguard peer ID.
        end
      end
    end
  end
end
