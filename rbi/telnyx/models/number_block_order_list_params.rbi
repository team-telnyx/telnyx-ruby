# typed: strong

module Telnyx
  module Models
    class NumberBlockOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberBlockOrderListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[status],
      # filter[created_at], filter[phone_numbers.starting_number]
      sig { returns(T.nilable(Telnyx::NumberBlockOrderListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::NumberBlockOrderListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::NumberBlockOrderListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::NumberBlockOrderListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::NumberBlockOrderListParams::Filter::OrHash,
          page: Telnyx::NumberBlockOrderListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers.starting_number]
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
            filter: Telnyx::NumberBlockOrderListParams::Filter,
            page: Telnyx::NumberBlockOrderListParams::Page,
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
              Telnyx::NumberBlockOrderListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter number block orders by date range.
        sig do
          returns(
            T.nilable(Telnyx::NumberBlockOrderListParams::Filter::CreatedAt)
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              Telnyx::NumberBlockOrderListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Filter number block orders having these phone numbers.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_numbers_starting_number

        sig { params(phone_numbers_starting_number: String).void }
        attr_writer :phone_numbers_starting_number

        # Filter number block orders by status.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers.starting_number]
        sig do
          params(
            created_at:
              Telnyx::NumberBlockOrderListParams::Filter::CreatedAt::OrHash,
            phone_numbers_starting_number: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter number block orders by date range.
          created_at: nil,
          # Filter number block orders having these phone numbers.
          phone_numbers_starting_number: nil,
          # Filter number block orders by status.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Telnyx::NumberBlockOrderListParams::Filter::CreatedAt,
              phone_numbers_starting_number: String,
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
                Telnyx::NumberBlockOrderListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter number block orders later than this value.
          sig { returns(T.nilable(String)) }
          attr_reader :gt

          sig { params(gt: String).void }
          attr_writer :gt

          # Filter number block orders earlier than this value.
          sig { returns(T.nilable(String)) }
          attr_reader :lt

          sig { params(lt: String).void }
          attr_writer :lt

          # Filter number block orders by date range.
          sig { params(gt: String, lt: String).returns(T.attached_class) }
          def self.new(
            # Filter number block orders later than this value.
            gt: nil,
            # Filter number block orders earlier than this value.
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
              Telnyx::NumberBlockOrderListParams::Page,
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
