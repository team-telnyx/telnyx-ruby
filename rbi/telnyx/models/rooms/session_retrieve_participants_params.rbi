# typed: strong

module Telnyx
  module Models
    module Rooms
      class SessionRetrieveParticipantsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rooms::SessionRetrieveParticipantsParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_joined_at][eq], filter[date_joined_at][gte],
        # filter[date_joined_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte],
        # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
        # filter[context]
        sig do
          returns(
            T.nilable(Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::Rooms::SessionRetrieveParticipantsParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page: Telnyx::Rooms::SessionRetrieveParticipantsParams::Page::OrHash
          ).void
        end
        attr_writer :page

        sig do
          params(
            filter:
              Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::OrHash,
            page:
              Telnyx::Rooms::SessionRetrieveParticipantsParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_joined_at][eq], filter[date_joined_at][gte],
          # filter[date_joined_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
          # filter[context]
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
              filter: Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter,
              page: Telnyx::Rooms::SessionRetrieveParticipantsParams::Page,
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
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter room participants based on the context.
          sig { returns(T.nilable(String)) }
          attr_reader :context

          sig { params(context: String).void }
          attr_writer :context

          sig do
            returns(
              T.nilable(
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt
              )
            )
          end
          attr_reader :date_joined_at

          sig do
            params(
              date_joined_at:
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt::OrHash
            ).void
          end
          attr_writer :date_joined_at

          sig do
            returns(
              T.nilable(
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt
              )
            )
          end
          attr_reader :date_left_at

          sig do
            params(
              date_left_at:
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt::OrHash
            ).void
          end
          attr_writer :date_left_at

          sig do
            returns(
              T.nilable(
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt
              )
            )
          end
          attr_reader :date_updated_at

          sig do
            params(
              date_updated_at:
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt::OrHash
            ).void
          end
          attr_writer :date_updated_at

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_joined_at][eq], filter[date_joined_at][gte],
          # filter[date_joined_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
          # filter[context]
          sig do
            params(
              context: String,
              date_joined_at:
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt::OrHash,
              date_left_at:
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt::OrHash,
              date_updated_at:
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter room participants based on the context.
            context: nil,
            date_joined_at: nil,
            date_left_at: nil,
            date_updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                context: String,
                date_joined_at:
                  Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt,
                date_left_at:
                  Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt,
                date_updated_at:
                  Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt
              }
            )
          end
          def to_hash
          end

          class DateJoinedAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # ISO 8601 date for filtering room participants that joined on that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :eq

            sig { params(eq: Date).void }
            attr_writer :eq

            # ISO 8601 date for filtering room participants that joined on or after that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :gte

            sig { params(gte: Date).void }
            attr_writer :gte

            # ISO 8601 date for filtering room participants that joined on or before that
            # date.
            sig { returns(T.nilable(Date)) }
            attr_reader :lte

            sig { params(lte: Date).void }
            attr_writer :lte

            sig do
              params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
            end
            def self.new(
              # ISO 8601 date for filtering room participants that joined on that date.
              eq: nil,
              # ISO 8601 date for filtering room participants that joined on or after that date.
              gte: nil,
              # ISO 8601 date for filtering room participants that joined on or before that
              # date.
              lte: nil
            )
            end

            sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
            def to_hash
            end
          end

          class DateLeftAt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # ISO 8601 date for filtering room participants that left on that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :eq

            sig { params(eq: Date).void }
            attr_writer :eq

            # ISO 8601 date for filtering room participants that left on or after that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :gte

            sig { params(gte: Date).void }
            attr_writer :gte

            # ISO 8601 date for filtering room participants that left on or before that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :lte

            sig { params(lte: Date).void }
            attr_writer :lte

            sig do
              params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
            end
            def self.new(
              # ISO 8601 date for filtering room participants that left on that date.
              eq: nil,
              # ISO 8601 date for filtering room participants that left on or after that date.
              gte: nil,
              # ISO 8601 date for filtering room participants that left on or before that date.
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
                  Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt,
                  Telnyx::Internal::AnyHash
                )
              end

            # ISO 8601 date for filtering room participants updated on that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :eq

            sig { params(eq: Date).void }
            attr_writer :eq

            # ISO 8601 date for filtering room participants updated on or after that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :gte

            sig { params(gte: Date).void }
            attr_writer :gte

            # ISO 8601 date for filtering room participants updated on or before that date.
            sig { returns(T.nilable(Date)) }
            attr_reader :lte

            sig { params(lte: Date).void }
            attr_writer :lte

            sig do
              params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
            end
            def self.new(
              # ISO 8601 date for filtering room participants updated on that date.
              eq: nil,
              # ISO 8601 date for filtering room participants updated on or after that date.
              gte: nil,
              # ISO 8601 date for filtering room participants updated on or before that date.
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
                Telnyx::Rooms::SessionRetrieveParticipantsParams::Page,
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
