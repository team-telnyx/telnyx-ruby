# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignmentHealth#retrieve
    class GlobalIPAssignmentHealthRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP, nil]
        optional :global_ip, -> { Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP }

        # @!attribute global_ip_assignment
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment, nil]
        optional :global_ip_assignment,
                 -> { Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment }

        # @!attribute health
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health, nil]
        optional :health, -> { Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health }

        # @!attribute timestamp
        #   The timestamp of the metric.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!method initialize(global_ip: nil, global_ip_assignment: nil, health: nil, timestamp: nil)
        #   @param global_ip [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP]
        #
        #   @param global_ip_assignment [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment]
        #
        #   @param health [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health]
        #
        #   @param timestamp [Time] The timestamp of the metric.

        # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data#global_ip
        class GlobalIP < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Global IP ID.
          #
          #   @return [String, nil]
          optional :id, String

          response_only do
            # @!attribute ip_address
            #   The Global IP address.
            #
            #   @return [String, nil]
            optional :ip_address, String
          end

          # @!method initialize(id: nil, ip_address: nil)
          #   @param id [String] Global IP ID.
          #
          #   @param ip_address [String] The Global IP address.
        end

        # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data#global_ip_assignment
        class GlobalIPAssignment < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Global IP assignment ID.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute wireguard_peer
          #
          #   @return [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer, nil]
          optional :wireguard_peer,
                   -> { Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer }

          # @!attribute wireguard_peer_id
          #   Wireguard peer ID.
          #
          #   @return [String, nil]
          optional :wireguard_peer_id, String

          # @!method initialize(id: nil, wireguard_peer: nil, wireguard_peer_id: nil)
          #   @param id [String] Global IP assignment ID.
          #
          #   @param wireguard_peer [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer]
          #
          #   @param wireguard_peer_id [String] Wireguard peer ID.

          # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment#wireguard_peer
          class WireguardPeer < Telnyx::Internal::Type::BaseModel
            # @!attribute ip_address
            #   The IP address of the interface.
            #
            #   @return [String, nil]
            optional :ip_address, String

            # @!attribute name
            #   A user specified name for the interface.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(ip_address: nil, name: nil)
            #   @param ip_address [String] The IP address of the interface.
            #
            #   @param name [String] A user specified name for the interface.
          end
        end

        # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data#health
        class Health < Telnyx::Internal::Type::BaseModel
          # @!attribute fail_
          #   The number of failed health checks.
          #
          #   @return [Float, nil]
          optional :fail_, Float, api_name: :fail

          # @!attribute pass
          #   The number of successful health checks.
          #
          #   @return [Float, nil]
          optional :pass, Float

          # @!method initialize(fail_: nil, pass: nil)
          #   @param fail_ [Float] The number of failed health checks.
          #
          #   @param pass [Float] The number of successful health checks.
        end
      end
    end
  end
end
