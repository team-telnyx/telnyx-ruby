# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionShareResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::ActionShareResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::PortingOrders::ActionShareResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::PortingOrders::ActionShareResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::PortingOrders::ActionShareResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::PortingOrders::ActionShareResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PortingOrders::ActionShareResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Uniquely identifies this sharing token
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # A signed JWT token that can be used to access the shared resource
          sig { returns(T.nilable(String)) }
          attr_reader :token

          sig { params(token: String).void }
          attr_writer :token

          # ISO 8601 formatted date indicating when the resource was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # ISO 8601 formatted date indicating when the sharing token expires.
          sig { returns(T.nilable(Time)) }
          attr_reader :expires_at

          sig { params(expires_at: Time).void }
          attr_writer :expires_at

          # The number of seconds until the sharing token expires
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_in_seconds

          sig { params(expires_in_seconds: Integer).void }
          attr_writer :expires_in_seconds

          # The permissions granted to the sharing token
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::TaggedSymbol
                ]
              )
            )
          end
          attr_reader :permissions

          sig do
            params(
              permissions:
                T::Array[
                  Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::OrSymbol
                ]
            ).void
          end
          attr_writer :permissions

          # Identifies the porting order resource being shared
          sig { returns(T.nilable(String)) }
          attr_reader :porting_order_id

          sig { params(porting_order_id: String).void }
          attr_writer :porting_order_id

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              id: String,
              token: String,
              created_at: Time,
              expires_at: Time,
              expires_in_seconds: Integer,
              permissions:
                T::Array[
                  Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::OrSymbol
                ],
              porting_order_id: String,
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Uniquely identifies this sharing token
            id: nil,
            # A signed JWT token that can be used to access the shared resource
            token: nil,
            # ISO 8601 formatted date indicating when the resource was created.
            created_at: nil,
            # ISO 8601 formatted date indicating when the sharing token expires.
            expires_at: nil,
            # The number of seconds until the sharing token expires
            expires_in_seconds: nil,
            # The permissions granted to the sharing token
            permissions: nil,
            # Identifies the porting order resource being shared
            porting_order_id: nil,
            # Identifies the type of the resource.
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                token: String,
                created_at: Time,
                expires_at: Time,
                expires_in_seconds: Integer,
                permissions:
                  T::Array[
                    Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::TaggedSymbol
                  ],
                porting_order_id: String,
                record_type: String
              }
            )
          end
          def to_hash
          end

          module Permission
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTING_ORDER_DOCUMENT_READ =
              T.let(
                :"porting_order.document.read",
                Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::TaggedSymbol
              )
            PORTING_ORDER_DOCUMENT_UPDATE =
              T.let(
                :"porting_order.document.update",
                Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
