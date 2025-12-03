# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignment < Telnyx::Models::Record
      OrHash =
        T.type_alias do
          T.any(Telnyx::GlobalIPAssignment, Telnyx::Internal::AnyHash)
        end

      # Global IP ID.
      sig { returns(T.nilable(String)) }
      attr_reader :global_ip_id

      sig { params(global_ip_id: String).void }
      attr_writer :global_ip_id

      # Enable/disable BGP announcement.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_in_maintenance

      sig { params(is_in_maintenance: T::Boolean).void }
      attr_writer :is_in_maintenance

      # Wireguard peer ID.
      sig { returns(T.nilable(String)) }
      attr_reader :wireguard_peer_id

      sig { params(wireguard_peer_id: String).void }
      attr_writer :wireguard_peer_id

      # Status of BGP announcement.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_announced

      sig { params(is_announced: T::Boolean).void }
      attr_writer :is_announced

      # Wireguard peer is connected.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_connected

      sig { params(is_connected: T::Boolean).void }
      attr_writer :is_connected

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The current status of the interface deployment.
      sig { returns(T.nilable(Telnyx::InterfaceStatus::OrSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          global_ip_id: String,
          is_announced: T::Boolean,
          is_connected: T::Boolean,
          is_in_maintenance: T::Boolean,
          record_type: String,
          status: Telnyx::InterfaceStatus::OrSymbol,
          wireguard_peer_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Global IP ID.
        global_ip_id: nil,
        # Status of BGP announcement.
        is_announced: nil,
        # Wireguard peer is connected.
        is_connected: nil,
        # Enable/disable BGP announcement.
        is_in_maintenance: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The current status of the interface deployment.
        status: nil,
        # Wireguard peer ID.
        wireguard_peer_id: nil
      )
      end

      sig do
        override.returns(
          {
            global_ip_id: String,
            is_announced: T::Boolean,
            is_connected: T::Boolean,
            is_in_maintenance: T::Boolean,
            record_type: String,
            status: Telnyx::InterfaceStatus::OrSymbol,
            wireguard_peer_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
