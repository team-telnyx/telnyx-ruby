# typed: strong

module Telnyx
  module Models
    module Networks
      class DefaultGatewayRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Networks::DefaultGatewayRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data::OrHash
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
                Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data::OrHash
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
                  Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data
                ],
              meta: Telnyx::PaginationMeta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Networks::DefaultGatewayRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Wireguard peer ID.
          sig { returns(T.nilable(String)) }
          attr_reader :wireguard_peer_id

          sig { params(wireguard_peer_id: String).void }
          attr_writer :wireguard_peer_id

          # Identifies the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # ISO 8601 formatted date-time indicating when the resource was created.
          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # ISO 8601 formatted date-time indicating when the resource was updated.
          sig { returns(T.nilable(String)) }
          attr_reader :updated_at

          sig { params(updated_at: String).void }
          attr_writer :updated_at

          # Network ID.
          sig { returns(T.nilable(String)) }
          attr_reader :network_id

          sig { params(network_id: String).void }
          attr_writer :network_id

          # The current status of the interface deployment.
          sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
          attr_reader :status

          sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
          attr_writer :status

          sig do
            params(
              id: String,
              created_at: String,
              record_type: String,
              updated_at: String,
              network_id: String,
              status: Telnyx::InterfaceStatus::OrSymbol,
              wireguard_peer_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the resource.
            id: nil,
            # ISO 8601 formatted date-time indicating when the resource was created.
            created_at: nil,
            # Identifies the type of the resource.
            record_type: nil,
            # ISO 8601 formatted date-time indicating when the resource was updated.
            updated_at: nil,
            # Network ID.
            network_id: nil,
            # The current status of the interface deployment.
            status: nil,
            # Wireguard peer ID.
            wireguard_peer_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: String,
                record_type: String,
                updated_at: String,
                network_id: String,
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
