# typed: strong

module Telnyx
  module Models
    class NumberReservationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberReservationListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[status],
      # filter[created_at], filter[phone_numbers.phone_number],
      # filter[customer_reference]
      sig { returns(T.nilable(Telnyx::NumberReservationListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::NumberReservationListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::NumberReservationListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::NumberReservationListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::NumberReservationListParams::Filter::OrHash,
          page: Telnyx::NumberReservationListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers.phone_number],
        # filter[customer_reference]
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
            filter: Telnyx::NumberReservationListParams::Filter,
            page: Telnyx::NumberReservationListParams::Page,
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
              Telnyx::NumberReservationListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter number reservations by date range.
        sig do
          returns(
            T.nilable(Telnyx::NumberReservationListParams::Filter::CreatedAt)
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              Telnyx::NumberReservationListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Filter number reservations via the customer reference set.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # Filter number reservations having these phone numbers.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_numbers_phone_number

        sig { params(phone_numbers_phone_number: String).void }
        attr_writer :phone_numbers_phone_number

        # Filter number reservations by status.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers.phone_number],
        # filter[customer_reference]
        sig do
          params(
            created_at:
              Telnyx::NumberReservationListParams::Filter::CreatedAt::OrHash,
            customer_reference: String,
            phone_numbers_phone_number: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter number reservations by date range.
          created_at: nil,
          # Filter number reservations via the customer reference set.
          customer_reference: nil,
          # Filter number reservations having these phone numbers.
          phone_numbers_phone_number: nil,
          # Filter number reservations by status.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              created_at:
                Telnyx::NumberReservationListParams::Filter::CreatedAt,
              customer_reference: String,
              phone_numbers_phone_number: String,
              status: String
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NumberReservationListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter number reservations later than this value.
          sig { returns(T.nilable(String)) }
          attr_reader :gt

          sig { params(gt: String).void }
          attr_writer :gt

          # Filter number reservations earlier than this value.
          sig { returns(T.nilable(String)) }
          attr_reader :lt

          sig { params(lt: String).void }
          attr_writer :lt

          # Filter number reservations by date range.
          sig { params(gt: String, lt: String).returns(T.attached_class) }
          def self.new(
            # Filter number reservations later than this value.
            gt: nil,
            # Filter number reservations earlier than this value.
            lt: nil
          )
          end

          sig { override.returns({ gt: String, lt: String }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberReservationListParams::Page,
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
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
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
