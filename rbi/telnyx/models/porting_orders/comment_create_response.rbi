# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::CommentCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::PortingOrders::CommentCreateResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::PortingOrders::CommentCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::PortingOrders::CommentCreateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::PortingOrders::CommentCreateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data,
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
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::TaggedSymbol
              )
            )
          end
          attr_reader :user_type

          sig do
            params(
              user_type:
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::OrSymbol
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
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::OrSymbol
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
                  Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::TaggedSymbol
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
                  Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMIN =
              T.let(
                :admin,
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::TaggedSymbol
              )
            USER =
              T.let(
                :user,
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType::TaggedSymbol
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
