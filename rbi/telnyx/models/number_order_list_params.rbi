# typed: strong

module Telnyx
  module Models
    class NumberOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberOrderListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[status],
      # filter[created_at], filter[phone_numbers_count], filter[customer_reference],
      # filter[requirements_met]
      sig { returns(T.nilable(Telnyx::NumberOrderListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::NumberOrderListParams::Filter::OrHash).void }
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
          filter: Telnyx::NumberOrderListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers_count], filter[customer_reference],
        # filter[requirements_met]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NumberOrderListParams::Filter,
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
              Telnyx::NumberOrderListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter number orders by date range.
        sig do
          returns(T.nilable(Telnyx::NumberOrderListParams::Filter::CreatedAt))
        end
        attr_reader :created_at

        sig do
          params(
            created_at: Telnyx::NumberOrderListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Filter number orders via the customer reference set.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # Filter number order with this amount of numbers
        sig { returns(T.nilable(String)) }
        attr_reader :phone_numbers_count

        sig { params(phone_numbers_count: String).void }
        attr_writer :phone_numbers_count

        # Filter number orders by requirements met.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :requirements_met

        sig { params(requirements_met: T::Boolean).void }
        attr_writer :requirements_met

        # Filter number orders by status.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers_count], filter[customer_reference],
        # filter[requirements_met]
        sig do
          params(
            created_at:
              Telnyx::NumberOrderListParams::Filter::CreatedAt::OrHash,
            customer_reference: String,
            phone_numbers_count: String,
            requirements_met: T::Boolean,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter number orders by date range.
          created_at: nil,
          # Filter number orders via the customer reference set.
          customer_reference: nil,
          # Filter number order with this amount of numbers
          phone_numbers_count: nil,
          # Filter number orders by requirements met.
          requirements_met: nil,
          # Filter number orders by status.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Telnyx::NumberOrderListParams::Filter::CreatedAt,
              customer_reference: String,
              phone_numbers_count: String,
              requirements_met: T::Boolean,
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
                Telnyx::NumberOrderListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter number orders later than this value.
          sig { returns(T.nilable(String)) }
          attr_reader :gt

          sig { params(gt: String).void }
          attr_writer :gt

          # Filter number orders earlier than this value.
          sig { returns(T.nilable(String)) }
          attr_reader :lt

          sig { params(lt: String).void }
          attr_writer :lt

          # Filter number orders by date range.
          sig { params(gt: String, lt: String).returns(T.attached_class) }
          def self.new(
            # Filter number orders later than this value.
            gt: nil,
            # Filter number orders earlier than this value.
            lt: nil
          )
          end

          sig { override.returns({ gt: String, lt: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
