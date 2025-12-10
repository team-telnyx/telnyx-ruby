# frozen_string_literal: true

module Telnyx
  module Models
    class GlobalIPAssignment < Telnyx::Models::Record
      # @!attribute global_ip_id
      #   Global IP ID.
      #
      #   @return [String, nil]
      optional :global_ip_id, String

      # @!attribute is_in_maintenance
      #   Enable/disable BGP announcement.
      #
      #   @return [Boolean, nil]
      optional :is_in_maintenance, Telnyx::Internal::Type::Boolean

      # @!attribute wireguard_peer_id
      #   Wireguard peer ID.
      #
      #   @return [String, nil]
      optional :wireguard_peer_id, String

      response_only do
        # @!attribute is_announced
        #   Status of BGP announcement.
        #
        #   @return [Boolean, nil]
        optional :is_announced, Telnyx::Internal::Type::Boolean

        # @!attribute is_connected
        #   Wireguard peer is connected.
        #
        #   @return [Boolean, nil]
        optional :is_connected, Telnyx::Internal::Type::Boolean

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

      # @!method initialize(global_ip_id: nil, is_announced: nil, is_connected: nil, is_in_maintenance: nil, record_type: nil, status: nil, wireguard_peer_id: nil)
      #   @param global_ip_id [String] Global IP ID.
      #
      #   @param is_announced [Boolean] Status of BGP announcement.
      #
      #   @param is_connected [Boolean] Wireguard peer is connected.
      #
      #   @param is_in_maintenance [Boolean] Enable/disable BGP announcement.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
      #
      #   @param wireguard_peer_id [String] Wireguard peer ID.
    end
  end
end
