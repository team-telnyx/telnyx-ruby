# typed: strong

module Telnyx
  module Models
    module Rooms
      class SessionList0Params < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rooms::SessionList0Params, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte],
        # filter[date_ended_at][eq], filter[date_ended_at][gte],
        # filter[date_ended_at][lte], filter[room_id], filter[active]
        sig { returns(T.nilable(Telnyx::Rooms::SessionList0Params::Filter)) }
        attr_reader :filter

        sig do
          params(filter: Telnyx::Rooms::SessionList0Params::Filter::OrHash).void
        end
        attr_writer :filter

        # To decide if room participants should be included in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_participants

        sig { params(include_participants: T::Boolean).void }
        attr_writer :include_participants

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
            filter: Telnyx::Rooms::SessionList0Params::Filter::OrHash,
            include_participants: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_created_at][eq], filter[date_created_at][gte],
          # filter[date_created_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_ended_at][eq], filter[date_ended_at][gte],
          # filter[date_ended_at][lte], filter[room_id], filter[active]
          filter: nil,
          # To decide if room participants should be included in the response.
          include_participants: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::Rooms::SessionList0Params::Filter,
              include_participants: T::Boolean,
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
                Telnyx::Rooms::SessionList0Params::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter active or inactive room sessions.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :active

          sig { params(active: T::Boolean).void }
          attr_writer :active

          sig do
            returns(
              T.nilable(
                Telnyx::Rooms::SessionList0Params::Filter::DateCreatedAt
              )
            )
          end
          attr_reader :date_created_at

          sig do
            params(
              date_created_at:
                Telnyx::Rooms::SessionList0Params::Filter::DateCreatedAt::OrHash
            ).void
          end
          attr_writer :date_created_at

          sig do
            returns(
              T.nilable(Telnyx::Rooms::SessionList0Params::Filter::DateEndedAt)
            )
          end
          attr_reader :date_ended_at

          sig do
            params(
              date_ended_at:
                Telnyx::Rooms::SessionList0Params::Filter::DateEndedAt::OrHash
            ).void
          end
          attr_writer :date_ended_at

          sig do
            returns(
              T.nilable(
                Telnyx::Rooms::SessionList0Params::Filter::DateUpdatedAt
              )
            )
          end
          attr_reader :date_updated_at

          sig do
            params(
              date_updated_at:
                Telnyx::Rooms::SessionList0Params::Filter::DateUpdatedAt::OrHash
            ).void
          end
          attr_writer :date_updated_at

          # Room_id for filtering room sessions.
          sig { returns(T.nilable(String)) }
          attr_reader :room_id

          sig { params(room_id: String).void }
          attr_writer :room_id

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_created_at][eq], filter[date_created_at][gte],
          # filter[date_created_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_ended_at][eq], filter[date_ended_at][gte],
          # filter[date_ended_at][lte], filter[room_id], filter[active]
          sig do
            params(
              active: T::Boolean,
              date_created_at:
                Telnyx::Rooms::SessionList0Params::Filter::DateCreatedAt::OrHash,
              date_ended_at:
                Telnyx::Rooms::SessionList0Params::Filter::DateEndedAt::OrHash,
              date_updated_at:
                Telnyx::Rooms::SessionList0Params::Filter::DateUpdatedAt::OrHash,
              room_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter active or inactive room sessions.
            active: nil,
            date_created_at: nil,
            date_ended_at: nil,
            date_updated_at: nil,
            # Room_id for filtering room sessions.
            room_id: nil
          )
          end

          sig do
            override.returns(
              {
                active: T::Boolean,
                date_created_at:
                  Telnyx::Rooms::SessionList0Params::Filter::DateCreatedAt,
                date_ended_at:
                  Telnyx::Rooms::SessionList0Params::Filter::DateEndedAt,
                date_updated_at:
                  Telnyx::Rooms::SessionList0Params::Filter::DateUpdatedAt,
                room_id: String
              }
            )
          end
          def to_hash
          end

          class DateCreatedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::SessionList0Params::Filter::DateCreatedAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # ISO 8601 date for filtering room sessions created on that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :eq

            sig { params(eq: Date).void }
            attr_writer :eq

            # ISO 8601 date for filtering room sessions created on or after that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :gte

            sig { params(gte: Date).void }
            attr_writer :gte

            # ISO 8601 date for filtering room sessions created on or before that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :lte

            sig { params(lte: Date).void }
            attr_writer :lte

            sig do
              params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
            end
            def self.new(
              # ISO 8601 date for filtering room sessions created on that date.
              eq: nil,
              # ISO 8601 date for filtering room sessions created on or after that date.
              gte: nil,
              # ISO 8601 date for filtering room sessions created on or before that date.
              lte: nil
            )
            end

            sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
            def to_hash
            end
          end

          class DateEndedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::SessionList0Params::Filter::DateEndedAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # ISO 8601 date for filtering room sessions ended on that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :eq

            sig { params(eq: Date).void }
            attr_writer :eq

            # ISO 8601 date for filtering room sessions ended on or after that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :gte

            sig { params(gte: Date).void }
            attr_writer :gte

            # ISO 8601 date for filtering room sessions ended on or before that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :lte

            sig { params(lte: Date).void }
            attr_writer :lte

            sig do
              params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
            end
            def self.new(
              # ISO 8601 date for filtering room sessions ended on that date.
              eq: nil,
              # ISO 8601 date for filtering room sessions ended on or after that date.
              gte: nil,
              # ISO 8601 date for filtering room sessions ended on or before that date.
              lte: nil
            )
            end

            sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
            def to_hash
            end
          end

          class DateUpdatedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::SessionList0Params::Filter::DateUpdatedAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # ISO 8601 date for filtering room sessions updated on that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :eq

            sig { params(eq: Date).void }
            attr_writer :eq

            # ISO 8601 date for filtering room sessions updated on or after that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :gte

            sig { params(gte: Date).void }
            attr_writer :gte

            # ISO 8601 date for filtering room sessions updated on or before that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :lte

            sig { params(lte: Date).void }
            attr_writer :lte

            sig do
              params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
            end
            def self.new(
              # ISO 8601 date for filtering room sessions updated on that date.
              eq: nil,
              # ISO 8601 date for filtering room sessions updated on or after that date.
              gte: nil,
              # ISO 8601 date for filtering room sessions updated on or before that date.
              lte: nil
            )
            end

            sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
