# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignmentsUsage#retrieve
    class GlobalIPAssignmentsUsageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP, nil]
        optional :global_ip, -> { Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP }

        # @!attribute global_ip_assignment
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment, nil]
        optional :global_ip_assignment,
                 -> { Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment }

        # @!attribute received
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received, nil]
        optional :received, -> { Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received }

        # @!attribute timestamp
        #   The timestamp of the metric.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!attribute transmitted
        #
        #   @return [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted, nil]
        optional :transmitted, -> { Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted }

        # @!method initialize(global_ip: nil, global_ip_assignment: nil, received: nil, timestamp: nil, transmitted: nil)
        #   @param global_ip [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP]
        #
        #   @param global_ip_assignment [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment]
        #
        #   @param received [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received]
        #
        #   @param timestamp [Time] The timestamp of the metric.
        #
        #   @param transmitted [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted]

        # @see Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data#global_ip
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

        # @see Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data#global_ip_assignment
        class GlobalIPAssignment < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Global IP assignment ID.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute wireguard_peer
          #
          #   @return [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer, nil]
          optional :wireguard_peer,
                   -> { Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer }

          # @!attribute wireguard_peer_id
          #   Wireguard peer ID.
          #
          #   @return [String, nil]
          optional :wireguard_peer_id, String

          # @!method initialize(id: nil, wireguard_peer: nil, wireguard_peer_id: nil)
          #   @param id [String] Global IP assignment ID.
          #
          #   @param wireguard_peer [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer]
          #
          #   @param wireguard_peer_id [String] Wireguard peer ID.

          # @see Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment#wireguard_peer
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

        # @see Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data#received
        class Received < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of data received.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute unit
          #   The unit of the amount of data received.
          #
          #   @return [String, nil]
          optional :unit, String

          # @!method initialize(amount: nil, unit: nil)
          #   @param amount [Float] The amount of data received.
          #
          #   @param unit [String] The unit of the amount of data received.
        end

        # @see Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data#transmitted
        class Transmitted < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of data transmitted.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute unit
          #   The unit of the amount of data transmitted.
          #
          #   @return [String, nil]
          optional :unit, String

          # @!method initialize(amount: nil, unit: nil)
          #   @param amount [Float] The amount of data transmitted.
          #
          #   @param unit [String] The unit of the amount of data transmitted.
        end
      end
    end
  end
end
