# typed: strong

module Telnyx
  module Models
    class SubNumberOrdersReportRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SubNumberOrdersReportRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The filters that were applied to generate this report
        sig do
          returns(
            T.nilable(
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Filters
            )
          )
        end
        attr_reader :filters

        sig do
          params(
            filters:
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Filters::OrHash
          ).void
        end
        attr_writer :filters

        # Indicates the completion level of the sub number orders report. The report must
        # have a status of 'success' before it can be downloaded.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The type of order report.
        sig { returns(T.nilable(String)) }
        attr_reader :order_type

        sig { params(order_type: String).void }
        attr_writer :order_type

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The ID of the user who created the report.
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            id: String,
            created_at: Time,
            filters:
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Filters::OrHash,
            order_type: String,
            status:
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::OrSymbol,
            updated_at: Time,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # The filters that were applied to generate this report
          filters: nil,
          # The type of order report.
          order_type: nil,
          # Indicates the completion level of the sub number orders report. The report must
          # have a status of 'success' before it can be downloaded.
          status: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil,
          # The ID of the user who created the report.
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              filters:
                Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Filters,
              order_type: String,
              status:
                Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol,
              updated_at: Time,
              user_id: String
            }
          )
        end
        def to_hash
        end

        class Filters < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Filters,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at_gt

          sig { params(created_at_gt: Time).void }
          attr_writer :created_at_gt

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at_lt

          sig { params(created_at_lt: Time).void }
          attr_writer :created_at_lt

          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          sig { returns(T.nilable(String)) }
          attr_reader :order_request_id

          sig { params(order_request_id: String).void }
          attr_writer :order_request_id

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # The filters that were applied to generate this report
          sig do
            params(
              country_code: String,
              created_at_gt: Time,
              created_at_lt: Time,
              customer_reference: String,
              order_request_id: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            country_code: nil,
            created_at_gt: nil,
            created_at_lt: nil,
            customer_reference: nil,
            order_request_id: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                country_code: String,
                created_at_gt: Time,
                created_at_lt: Time,
                customer_reference: String,
                order_request_id: String,
                status: String
              }
            )
          end
          def to_hash
          end
        end

        # Indicates the completion level of the sub number orders report. The report must
        # have a status of 'success' before it can be downloaded.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data::Status::TaggedSymbol
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
