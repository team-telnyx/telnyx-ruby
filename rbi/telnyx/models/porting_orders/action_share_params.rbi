# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionShareParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::ActionShareParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The number of seconds the token will be valid for
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_in_seconds

        sig { params(expires_in_seconds: Integer).void }
        attr_writer :expires_in_seconds

        # The permissions the token will have
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::ActionShareParams::Permissions::OrSymbol
            )
          )
        end
        attr_reader :permissions

        sig do
          params(
            permissions:
              Telnyx::PortingOrders::ActionShareParams::Permissions::OrSymbol
          ).void
        end
        attr_writer :permissions

        sig do
          params(
            expires_in_seconds: Integer,
            permissions:
              Telnyx::PortingOrders::ActionShareParams::Permissions::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of seconds the token will be valid for
          expires_in_seconds: nil,
          # The permissions the token will have
          permissions: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              expires_in_seconds: Integer,
              permissions:
                Telnyx::PortingOrders::ActionShareParams::Permissions::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The permissions the token will have
        module Permissions
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrders::ActionShareParams::Permissions
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_DOCUMENT_READ =
            T.let(
              :"porting_order.document.read",
              Telnyx::PortingOrders::ActionShareParams::Permissions::TaggedSymbol
            )
          PORTING_ORDER_DOCUMENT_UPDATE =
            T.let(
              :"porting_order.document.update",
              Telnyx::PortingOrders::ActionShareParams::Permissions::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::ActionShareParams::Permissions::TaggedSymbol
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
