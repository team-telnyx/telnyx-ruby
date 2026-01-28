# typed: strong

module Telnyx
  module Models
    module Portouts
      class EventListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Portouts::EventListParams, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[event_type], filter[portout_id], filter[created_at]
        sig { returns(T.nilable(Telnyx::Portouts::EventListParams::Filter)) }
        attr_reader :filter

        sig do
          params(filter: Telnyx::Portouts::EventListParams::Filter::OrHash).void
        end
        attr_writer :filter

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter: Telnyx::Portouts::EventListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[event_type], filter[portout_id], filter[created_at]
          filter: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::Portouts::EventListParams::Filter,
              page_number: Integer,
              page_size: Integer,
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
                Telnyx::Portouts::EventListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by created_at date range using nested operations
          sig do
            returns(
              T.nilable(Telnyx::Portouts::EventListParams::Filter::CreatedAt)
            )
          end
          attr_reader :created_at

          sig do
            params(
              created_at:
                Telnyx::Portouts::EventListParams::Filter::CreatedAt::OrHash
            ).void
          end
          attr_writer :created_at

          # Filter by event type.
          sig do
            returns(
              T.nilable(
                Telnyx::Portouts::EventListParams::Filter::EventType::OrSymbol
              )
            )
          end
          attr_reader :event_type

          sig do
            params(
              event_type:
                Telnyx::Portouts::EventListParams::Filter::EventType::OrSymbol
            ).void
          end
          attr_writer :event_type

          # Filter by port-out order ID.
          sig { returns(T.nilable(String)) }
          attr_reader :portout_id

          sig { params(portout_id: String).void }
          attr_writer :portout_id

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[event_type], filter[portout_id], filter[created_at]
          sig do
            params(
              created_at:
                Telnyx::Portouts::EventListParams::Filter::CreatedAt::OrHash,
              event_type:
                Telnyx::Portouts::EventListParams::Filter::EventType::OrSymbol,
              portout_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by created_at date range using nested operations
            created_at: nil,
            # Filter by event type.
            event_type: nil,
            # Filter by port-out order ID.
            portout_id: nil
          )
          end

          sig do
            override.returns(
              {
                created_at:
                  Telnyx::Portouts::EventListParams::Filter::CreatedAt,
                event_type:
                  Telnyx::Portouts::EventListParams::Filter::EventType::OrSymbol,
                portout_id: String
              }
            )
          end
          def to_hash
          end

          class CreatedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Portouts::EventListParams::Filter::CreatedAt,
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

            # Filter by created_at date range using nested operations
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
          module EventType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Portouts::EventListParams::Filter::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTOUT_STATUS_CHANGED =
              T.let(
                :"portout.status_changed",
                Telnyx::Portouts::EventListParams::Filter::EventType::TaggedSymbol
              )
            PORTOUT_NEW_COMMENT =
              T.let(
                :"portout.new_comment",
                Telnyx::Portouts::EventListParams::Filter::EventType::TaggedSymbol
              )
            PORTOUT_FOC_DATE_CHANGED =
              T.let(
                :"portout.foc_date_changed",
                Telnyx::Portouts::EventListParams::Filter::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Portouts::EventListParams::Filter::EventType::TaggedSymbol
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
