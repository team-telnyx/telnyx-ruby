# typed: strong

module Telnyx
  module Models
    PortingOrdersComment = PortingOrders::PortingOrdersComment

    module PortingOrders
      class PortingOrdersComment < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PortingOrdersComment,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Body of comment
        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :porting_order_id

        sig { params(porting_order_id: String).void }
        attr_writer :porting_order_id

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Indicates whether this comment was created by a Telnyx Admin, user, or system
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingOrdersComment::UserType::TaggedSymbol
            )
          )
        end
        attr_reader :user_type

        sig do
          params(
            user_type:
              Telnyx::PortingOrders::PortingOrdersComment::UserType::OrSymbol
          ).void
        end
        attr_writer :user_type

        sig do
          params(
            id: String,
            body: String,
            created_at: Time,
            porting_order_id: String,
            record_type: String,
            user_type:
              Telnyx::PortingOrders::PortingOrdersComment::UserType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # Body of comment
          body: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          porting_order_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Indicates whether this comment was created by a Telnyx Admin, user, or system
          user_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body: String,
              created_at: Time,
              porting_order_id: String,
              record_type: String,
              user_type:
                Telnyx::PortingOrders::PortingOrdersComment::UserType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Indicates whether this comment was created by a Telnyx Admin, user, or system
        module UserType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrders::PortingOrdersComment::UserType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADMIN =
            T.let(
              :admin,
              Telnyx::PortingOrders::PortingOrdersComment::UserType::TaggedSymbol
            )
          USER =
            T.let(
              :user,
              Telnyx::PortingOrders::PortingOrdersComment::UserType::TaggedSymbol
            )
          SYSTEM =
            T.let(
              :system,
              Telnyx::PortingOrders::PortingOrdersComment::UserType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::PortingOrdersComment::UserType::TaggedSymbol
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
