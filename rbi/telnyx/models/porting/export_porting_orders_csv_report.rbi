# typed: strong

module Telnyx
  module Models
    module Porting
      class ExportPortingOrdersCsvReport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::ExportPortingOrdersCsvReport,
              Telnyx::Internal::AnyHash
            )
          end

        # The filters to apply to the export porting order CSV report.
        sig { returns(Telnyx::Porting::ExportPortingOrdersCsvReport::Filters) }
        attr_reader :filters

        sig do
          params(
            filters:
              Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::OrHash
          ).void
        end
        attr_writer :filters

        # The parameters for generating a porting orders CSV report.
        sig do
          params(
            filters:
              Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The filters to apply to the export porting order CSV report.
          filters:
        )
        end

        sig do
          override.returns(
            { filters: Telnyx::Porting::ExportPortingOrdersCsvReport::Filters }
          )
        end
        def to_hash
        end

        class Filters < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters,
                Telnyx::Internal::AnyHash
              )
            end

          # The date and time the porting order was created after.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at_gt

          sig { params(created_at_gt: Time).void }
          attr_writer :created_at_gt

          # The date and time the porting order was created before.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at_lt

          sig { params(created_at_lt: Time).void }
          attr_writer :created_at_lt

          # The customer reference of the porting orders to include in the report.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :customer_reference_in

          sig { params(customer_reference_in: T::Array[String]).void }
          attr_writer :customer_reference_in

          # The status of the porting orders to include in the report.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::OrSymbol
                ]
              )
            )
          end
          attr_reader :status_in

          sig do
            params(
              status_in:
                T::Array[
                  Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::OrSymbol
                ]
            ).void
          end
          attr_writer :status_in

          # The filters to apply to the export porting order CSV report.
          sig do
            params(
              created_at_gt: Time,
              created_at_lt: Time,
              customer_reference_in: T::Array[String],
              status_in:
                T::Array[
                  Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time the porting order was created after.
            created_at_gt: nil,
            # The date and time the porting order was created before.
            created_at_lt: nil,
            # The customer reference of the porting orders to include in the report.
            customer_reference_in: nil,
            # The status of the porting orders to include in the report.
            status_in: nil
          )
          end

          sig do
            override.returns(
              {
                created_at_gt: Time,
                created_at_lt: Time,
                customer_reference_in: T::Array[String],
                status_in:
                  T::Array[
                    Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::OrSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          module StatusIn
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :draft,
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            IN_PROCESS =
              T.let(
                :"in-process",
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            SUBMITTED =
              T.let(
                :submitted,
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            EXCEPTION =
              T.let(
                :exception,
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            FOC_DATE_CONFIRMED =
              T.let(
                :"foc-date-confirmed",
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            CANCEL_PENDING =
              T.let(
                :"cancel-pending",
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            PORTED =
              T.let(
                :ported,
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn::TaggedSymbol
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
