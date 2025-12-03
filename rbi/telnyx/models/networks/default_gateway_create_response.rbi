# typed: strong

module Telnyx
  module Models
    module Networks
      class DefaultGatewayCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Networks::DefaultGatewayCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::PaginationMeta)) }
        attr_reader :meta

        sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data::OrHash
              ],
            meta: Telnyx::PaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data
                ],
              meta: Telnyx::PaginationMeta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Models::Record
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Networks::DefaultGatewayCreateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Wireguard peer ID.
          sig { returns(T.nilable(String)) }
          attr_reader :wireguard_peer_id

          sig { params(wireguard_peer_id: String).void }
          attr_writer :wireguard_peer_id

          # Network ID.
          sig { returns(T.nilable(String)) }
          attr_reader :network_id

          sig { params(network_id: String).void }
          attr_writer :network_id

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The current status of the interface deployment.
          sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
          attr_reader :status

          sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
          attr_writer :status

          sig do
            params(
              network_id: String,
              record_type: String,
              status: Telnyx::InterfaceStatus::OrSymbol,
              wireguard_peer_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Network ID.
            network_id: nil,
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
                network_id: String,
                record_type: String,
                status: Telnyx::InterfaceStatus::TaggedSymbol,
                wireguard_peer_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
