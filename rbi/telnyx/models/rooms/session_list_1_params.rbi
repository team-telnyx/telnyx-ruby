# typed: strong

module Telnyx
  module Models
    module Rooms
      class SessionList1Params < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rooms::SessionList1Params, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte],
        # filter[date_ended_at][eq], filter[date_ended_at][gte],
        # filter[date_ended_at][lte], filter[active]
        sig { returns(T.nilable(Telnyx::Rooms::SessionList1Params::Filter)) }
        attr_reader :filter

        sig do
          params(filter: Telnyx::Rooms::SessionList1Params::Filter::OrHash).void
        end
        attr_writer :filter

        # To decide if room participants should be included in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_participants

        sig { params(include_participants: T::Boolean).void }
        attr_writer :include_participants

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { returns(T.nilable(Telnyx::Rooms::SessionList1Params::Page)) }
        attr_reader :page

        sig do
          params(page: Telnyx::Rooms::SessionList1Params::Page::OrHash).void
        end
        attr_writer :page

        sig do
          params(
            filter: Telnyx::Rooms::SessionList1Params::Filter::OrHash,
            include_participants: T::Boolean,
            page: Telnyx::Rooms::SessionList1Params::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_created_at][eq], filter[date_created_at][gte],
          # filter[date_created_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_ended_at][eq], filter[date_ended_at][gte],
          # filter[date_ended_at][lte], filter[active]
          filter: nil,
          # To decide if room participants should be included in the response.
          include_participants: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::Rooms::SessionList1Params::Filter,
              include_participants: T::Boolean,
              page: Telnyx::Rooms::SessionList1Params::Page,
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
                Telnyx::Rooms::SessionList1Params::Filter,
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
                Telnyx::Rooms::SessionList1Params::Filter::DateCreatedAt
              )
            )
          end
          attr_reader :date_created_at

          sig do
            params(
              date_created_at:
                Telnyx::Rooms::SessionList1Params::Filter::DateCreatedAt::OrHash
            ).void
          end
          attr_writer :date_created_at

          sig do
            returns(
              T.nilable(Telnyx::Rooms::SessionList1Params::Filter::DateEndedAt)
            )
          end
          attr_reader :date_ended_at

          sig do
            params(
              date_ended_at:
                Telnyx::Rooms::SessionList1Params::Filter::DateEndedAt::OrHash
            ).void
          end
          attr_writer :date_ended_at

          sig do
            returns(
              T.nilable(
                Telnyx::Rooms::SessionList1Params::Filter::DateUpdatedAt
              )
            )
          end
          attr_reader :date_updated_at

          sig do
            params(
              date_updated_at:
                Telnyx::Rooms::SessionList1Params::Filter::DateUpdatedAt::OrHash
            ).void
          end
          attr_writer :date_updated_at

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_created_at][eq], filter[date_created_at][gte],
          # filter[date_created_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_ended_at][eq], filter[date_ended_at][gte],
          # filter[date_ended_at][lte], filter[active]
          sig do
            params(
              active: T::Boolean,
              date_created_at:
                Telnyx::Rooms::SessionList1Params::Filter::DateCreatedAt::OrHash,
              date_ended_at:
                Telnyx::Rooms::SessionList1Params::Filter::DateEndedAt::OrHash,
              date_updated_at:
                Telnyx::Rooms::SessionList1Params::Filter::DateUpdatedAt::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter active or inactive room sessions.
            active: nil,
            date_created_at: nil,
            date_ended_at: nil,
            date_updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                active: T::Boolean,
                date_created_at:
                  Telnyx::Rooms::SessionList1Params::Filter::DateCreatedAt,
                date_ended_at:
                  Telnyx::Rooms::SessionList1Params::Filter::DateEndedAt,
                date_updated_at:
                  Telnyx::Rooms::SessionList1Params::Filter::DateUpdatedAt
              }
            )
          end
          def to_hash
          end

          class DateCreatedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::SessionList1Params::Filter::DateCreatedAt,
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
                  Telnyx::Rooms::SessionList1Params::Filter::DateEndedAt,
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
                  Telnyx::Rooms::SessionList1Params::Filter::DateUpdatedAt,
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

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rooms::SessionList1Params::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load.
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page.
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
            # The page number to load.
            number: nil,
            # The size of the page.
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
