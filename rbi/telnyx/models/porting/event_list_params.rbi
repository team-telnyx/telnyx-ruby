# typed: strong

module Telnyx
  module Models
    module Porting
      class EventListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Porting::EventListParams, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
        sig { returns(T.nilable(Telnyx::Porting::EventListParams::Filter)) }
        attr_reader :filter

        sig do
          params(filter: Telnyx::Porting::EventListParams::Filter::OrHash).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { returns(T.nilable(Telnyx::Porting::EventListParams::Page)) }
        attr_reader :page

        sig do
          params(page: Telnyx::Porting::EventListParams::Page::OrHash).void
        end
        attr_writer :page

        sig do
          params(
            filter: Telnyx::Porting::EventListParams::Filter::OrHash,
            page: Telnyx::Porting::EventListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::Porting::EventListParams::Filter,
              page: Telnyx::Porting::EventListParams::Page,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::EventListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Created at date range filtering operations
          sig do
            returns(
              T.nilable(Telnyx::Porting::EventListParams::Filter::CreatedAt)
            )
          end
          attr_reader :created_at

          sig do
            params(
              created_at:
                Telnyx::Porting::EventListParams::Filter::CreatedAt::OrHash
            ).void
          end
          attr_writer :created_at

          # Filter by porting order ID.
          sig { returns(T.nilable(String)) }
          attr_reader :porting_order_id

          sig { params(porting_order_id: String).void }
          attr_writer :porting_order_id

          # Filter by event type.
          sig do
            returns(
              T.nilable(
                Telnyx::Porting::EventListParams::Filter::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type: Telnyx::Porting::EventListParams::Filter::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
          sig do
            params(
              created_at:
                Telnyx::Porting::EventListParams::Filter::CreatedAt::OrHash,
              porting_order_id: String,
              type: Telnyx::Porting::EventListParams::Filter::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Created at date range filtering operations
            created_at: nil,
            # Filter by porting order ID.
            porting_order_id: nil,
            # Filter by event type.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: Telnyx::Porting::EventListParams::Filter::CreatedAt,
                porting_order_id: String,
                type: Telnyx::Porting::EventListParams::Filter::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class CreatedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Porting::EventListParams::Filter::CreatedAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter by created at greater than or equal to.
            sig { returns(T.nilable(Time)) }
            attr_reader :gte

            sig { params(gte: Time).void }
            attr_writer :gte

            # Filter by created at less than or equal to.
            sig { returns(T.nilable(Time)) }
            attr_reader :lte

            sig { params(lte: Time).void }
            attr_writer :lte

            # Created at date range filtering operations
            sig { params(gte: Time, lte: Time).returns(T.attached_class) }
            def self.new(
              # Filter by created at greater than or equal to.
              gte: nil,
              # Filter by created at less than or equal to.
              lte: nil
            )
            end

            sig { override.returns({ gte: Time, lte: Time }) }
            def to_hash
            end
          end

          # Filter by event type.
          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Porting::EventListParams::Filter::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTING_ORDER_DELETED =
              T.let(
                :"porting_order.deleted",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )
            PORTING_ORDER_LOA_UPDATED =
              T.let(
                :"porting_order.loa_updated",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )
            PORTING_ORDER_MESSAGING_CHANGED =
              T.let(
                :"porting_order.messaging_changed",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )
            PORTING_ORDER_STATUS_CHANGED =
              T.let(
                :"porting_order.status_changed",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )
            PORTING_ORDER_SHARING_TOKEN_EXPIRED =
              T.let(
                :"porting_order.sharing_token_expired",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )
            PORTING_ORDER_NEW_COMMENT =
              T.let(
                :"porting_order.new_comment",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )
            PORTING_ORDER_SPLIT =
              T.let(
                :"porting_order.split",
                Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Porting::EventListParams::Filter::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::EventListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :size

          sig { params(size: Integer).void }
          attr_writer :size

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
          def self.new(
            # The page number to load
            number: nil,
            # The size of the page
            size: nil
          )
          end

          sig { override.returns({ number: Integer, size: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
