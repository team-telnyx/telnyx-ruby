# typed: strong

module Telnyx
  module Models
    module Portouts
      class ExportPortoutsCsvReport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::ExportPortoutsCsvReport,
              Telnyx::Internal::AnyHash
            )
          end

        # The filters to apply to the export port-out CSV report.
        sig { returns(Telnyx::Portouts::ExportPortoutsCsvReport::Filters) }
        attr_reader :filters

        sig do
          params(
            filters: Telnyx::Portouts::ExportPortoutsCsvReport::Filters::OrHash
          ).void
        end
        attr_writer :filters

        # The parameters for generating a port-outs CSV report.
        sig do
          params(
            filters: Telnyx::Portouts::ExportPortoutsCsvReport::Filters::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The filters to apply to the export port-out CSV report.
          filters:
        )
        end

        sig do
          override.returns(
            { filters: Telnyx::Portouts::ExportPortoutsCsvReport::Filters }
          )
        end
        def to_hash
        end

        class Filters < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters,
                Telnyx::Internal::AnyHash
              )
            end

          # The date and time the port-out was created after.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at_gt

          sig { params(created_at_gt: Time).void }
          attr_writer :created_at_gt

          # The date and time the port-out was created before.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at_lt

          sig { params(created_at_lt: Time).void }
          attr_writer :created_at_lt

          # The customer reference of the port-outs to include in the report.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :customer_reference_in

          sig { params(customer_reference_in: T::Array[String]).void }
          attr_writer :customer_reference_in

          # The end user name of the port-outs to include in the report.
          sig { returns(T.nilable(String)) }
          attr_reader :end_user_name

          sig { params(end_user_name: String).void }
          attr_writer :end_user_name

          # A list of phone numbers that the port-outs phone numbers must overlap with.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phone_numbers_overlaps

          sig { params(phone_numbers_overlaps: T::Array[String]).void }
          attr_writer :phone_numbers_overlaps

          # The status of the port-outs to include in the report.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::OrSymbol
                ]
              )
            )
          end
          attr_reader :status_in

          sig do
            params(
              status_in:
                T::Array[
                  Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::OrSymbol
                ]
            ).void
          end
          attr_writer :status_in

          # The filters to apply to the export port-out CSV report.
          sig do
            params(
              created_at_gt: Time,
              created_at_lt: Time,
              customer_reference_in: T::Array[String],
              end_user_name: String,
              phone_numbers_overlaps: T::Array[String],
              status_in:
                T::Array[
                  Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time the port-out was created after.
            created_at_gt: nil,
            # The date and time the port-out was created before.
            created_at_lt: nil,
            # The customer reference of the port-outs to include in the report.
            customer_reference_in: nil,
            # The end user name of the port-outs to include in the report.
            end_user_name: nil,
            # A list of phone numbers that the port-outs phone numbers must overlap with.
            phone_numbers_overlaps: nil,
            # The status of the port-outs to include in the report.
            status_in: nil
          )
          end

          sig do
            override.returns(
              {
                created_at_gt: Time,
                created_at_lt: Time,
                customer_reference_in: T::Array[String],
                end_user_name: String,
                phone_numbers_overlaps: T::Array[String],
                status_in:
                  T::Array[
                    Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::OrSymbol
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
                  Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
              )
            AUTHORIZED =
              T.let(
                :authorized,
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
              )
            PORTED =
              T.let(
                :ported,
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
              )
            REJECTED_PENDING =
              T.let(
                :"rejected-pending",
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn::TaggedSymbol
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
