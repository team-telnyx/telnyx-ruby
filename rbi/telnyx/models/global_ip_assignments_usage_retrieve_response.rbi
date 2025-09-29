# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignmentsUsageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP
            )
          )
        end
        attr_reader :global_ip

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP::OrHash
          ).void
        end
        attr_writer :global_ip

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment
            )
          )
        end
        attr_reader :global_ip_assignment

        sig do
          params(
            global_ip_assignment:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::OrHash
          ).void
        end
        attr_writer :global_ip_assignment

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received
            )
          )
        end
        attr_reader :received

        sig do
          params(
            received:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received::OrHash
          ).void
        end
        attr_writer :received

        # The timestamp of the metric.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted
            )
          )
        end
        attr_reader :transmitted

        sig do
          params(
            transmitted:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted::OrHash
          ).void
        end
        attr_writer :transmitted

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP::OrHash,
            global_ip_assignment:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::OrHash,
            received:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received::OrHash,
            timestamp: Time,
            transmitted:
              Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          global_ip: nil,
          global_ip_assignment: nil,
          received: nil,
          # The timestamp of the metric.
          timestamp: nil,
          transmitted: nil
        )
        end

        sig do
          override.returns(
            {
              global_ip:
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP,
              global_ip_assignment:
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment,
              received:
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received,
              timestamp: Time,
              transmitted:
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted
            }
          )
        end
        def to_hash
        end

        class GlobalIP < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIP,
                Telnyx::Internal::AnyHash
              )
            end

          # Global IP ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The Global IP address.
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address

          sig { params(ip_address: String).void }
          attr_writer :ip_address

          sig do
            params(id: String, ip_address: String).returns(T.attached_class)
          end
          def self.new(
            # Global IP ID.
            id: nil,
            # The Global IP address.
            ip_address: nil
          )
          end

          sig { override.returns({ id: String, ip_address: String }) }
          def to_hash
          end
        end

        class GlobalIPAssignment < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment,
                Telnyx::Internal::AnyHash
              )
            end

          # Global IP assignment ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer
              )
            )
          end
          attr_reader :wireguard_peer

          sig do
            params(
              wireguard_peer:
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer::OrHash
            ).void
          end
          attr_writer :wireguard_peer

          # Wireguard peer ID.
          sig { returns(T.nilable(String)) }
          attr_reader :wireguard_peer_id

          sig { params(wireguard_peer_id: String).void }
          attr_writer :wireguard_peer_id

          sig do
            params(
              id: String,
              wireguard_peer:
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer::OrHash,
              wireguard_peer_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Global IP assignment ID.
            id: nil,
            wireguard_peer: nil,
            # Wireguard peer ID.
            wireguard_peer_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                wireguard_peer:
                  Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer,
                wireguard_peer_id: String
              }
            )
          end
          def to_hash
          end

          class WireguardPeer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer,
                  Telnyx::Internal::AnyHash
                )
              end

            # The IP address of the interface.
            sig { returns(T.nilable(String)) }
            attr_reader :ip_address

            sig { params(ip_address: String).void }
            attr_writer :ip_address

            # A user specified name for the interface.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(ip_address: String, name: String).returns(T.attached_class)
            end
            def self.new(
              # The IP address of the interface.
              ip_address: nil,
              # A user specified name for the interface.
              name: nil
            )
            end

            sig { override.returns({ ip_address: String, name: String }) }
            def to_hash
            end
          end
        end

        class Received < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Received,
                Telnyx::Internal::AnyHash
              )
            end

          # The amount of data received.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # The unit of the amount of data received.
          sig { returns(T.nilable(String)) }
          attr_reader :unit

          sig { params(unit: String).void }
          attr_writer :unit

          sig { params(amount: Float, unit: String).returns(T.attached_class) }
          def self.new(
            # The amount of data received.
            amount: nil,
            # The unit of the amount of data received.
            unit: nil
          )
          end

          sig { override.returns({ amount: Float, unit: String }) }
          def to_hash
          end
        end

        class Transmitted < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data::Transmitted,
                Telnyx::Internal::AnyHash
              )
            end

          # The amount of data transmitted.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # The unit of the amount of data transmitted.
          sig { returns(T.nilable(String)) }
          attr_reader :unit

          sig { params(unit: String).void }
          attr_writer :unit

          sig { params(amount: Float, unit: String).returns(T.attached_class) }
          def self.new(
            # The amount of data transmitted.
            amount: nil,
            # The unit of the amount of data transmitted.
            unit: nil
          )
          end

          sig { override.returns({ amount: Float, unit: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
