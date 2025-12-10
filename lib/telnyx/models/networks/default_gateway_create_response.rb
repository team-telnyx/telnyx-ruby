# frozen_string_literal: true

module Telnyx
  module Models
    module Networks
      # @see Telnyx::Resources::Networks::DefaultGateway#create
      class DefaultGatewayCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data>]
        #   @param meta [Telnyx::Models::PaginationMeta]

        class Data < Telnyx::Models::Record
          # @!attribute wireguard_peer_id
          #   Wireguard peer ID.
          #
          #   @return [String, nil]
          optional :wireguard_peer_id, String

          response_only do
            # @!attribute network_id
            #   Network ID.
            #
            #   @return [String, nil]
            optional :network_id, String

            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute status
            #   The current status of the interface deployment.
            #
            #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
            optional :status, enum: -> { Telnyx::InterfaceStatus }
          end

          # @!method initialize(network_id: nil, record_type: nil, status: nil, wireguard_peer_id: nil)
          #   @param network_id [String] Network ID.
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
          #
          #   @param wireguard_peer_id [String] Wireguard peer ID.
        end
      end
    end
  end
end
