# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignmentHealthRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::OrHash
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
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data
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
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP
            )
          )
        end
        attr_reader :global_ip

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP::OrHash
          ).void
        end
        attr_writer :global_ip

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment
            )
          )
        end
        attr_reader :global_ip_assignment

        sig do
          params(
            global_ip_assignment:
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::OrHash
          ).void
        end
        attr_writer :global_ip_assignment

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health
            )
          )
        end
        attr_reader :health

        sig do
          params(
            health:
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health::OrHash
          ).void
        end
        attr_writer :health

        # The timestamp of the metric.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP::OrHash,
            global_ip_assignment:
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::OrHash,
            health:
              Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health::OrHash,
            timestamp: Time
          ).returns(T.attached_class)
        end
        def self.new(
          global_ip: nil,
          global_ip_assignment: nil,
          health: nil,
          # The timestamp of the metric.
          timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              global_ip:
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP,
              global_ip_assignment:
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment,
              health:
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health,
              timestamp: Time
            }
          )
        end
        def to_hash
        end

        class GlobalIP < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIP,
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
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment,
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
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer
              )
            )
          end
          attr_reader :wireguard_peer

          sig do
            params(
              wireguard_peer:
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer::OrHash
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
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer::OrHash,
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
                  Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer,
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
                  Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::GlobalIPAssignment::WireguardPeer,
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

        class Health < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data::Health,
                Telnyx::Internal::AnyHash
              )
            end

          # The number of failed health checks.
          sig { returns(T.nilable(Float)) }
          attr_reader :fail_

          sig { params(fail_: Float).void }
          attr_writer :fail_

          # The number of successful health checks.
          sig { returns(T.nilable(Float)) }
          attr_reader :pass

          sig { params(pass: Float).void }
          attr_writer :pass

          sig { params(fail_: Float, pass: Float).returns(T.attached_class) }
          def self.new(
            # The number of failed health checks.
            fail_: nil,
            # The number of successful health checks.
            pass: nil
          )
          end

          sig { override.returns({ fail_: Float, pass: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
