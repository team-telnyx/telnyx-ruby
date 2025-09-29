# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      class ExportPortoutsCsvReport < Telnyx::Internal::Type::BaseModel
        # @!attribute filters
        #   The filters to apply to the export port-out CSV report.
        #
        #   @return [Telnyx::Models::Portouts::ExportPortoutsCsvReport::Filters]
        required :filters, -> { Telnyx::Portouts::ExportPortoutsCsvReport::Filters }

        # @!method initialize(filters:)
        #   The parameters for generating a port-outs CSV report.
        #
        #   @param filters [Telnyx::Models::Portouts::ExportPortoutsCsvReport::Filters] The filters to apply to the export port-out CSV report.

        # @see Telnyx::Models::Portouts::ExportPortoutsCsvReport#filters
        class Filters < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at_gt
          #   The date and time the port-out was created after.
          #
          #   @return [Time, nil]
          optional :created_at_gt, Time, api_name: :created_at__gt

          # @!attribute created_at_lt
          #   The date and time the port-out was created before.
          #
          #   @return [Time, nil]
          optional :created_at_lt, Time, api_name: :created_at__lt

          # @!attribute customer_reference_in
          #   The customer reference of the port-outs to include in the report.
          #
          #   @return [Array<String>, nil]
          optional :customer_reference_in,
                   Telnyx::Internal::Type::ArrayOf[String],
                   api_name: :customer_reference__in

          # @!attribute end_user_name
          #   The end user name of the port-outs to include in the report.
          #
          #   @return [String, nil]
          optional :end_user_name, String

          # @!attribute phone_numbers_overlaps
          #   A list of phone numbers that the port-outs phone numbers must overlap with.
          #
          #   @return [Array<String>, nil]
          optional :phone_numbers_overlaps,
                   Telnyx::Internal::Type::ArrayOf[String],
                   api_name: :phone_numbers__overlaps

          # @!attribute status_in
          #   The status of the port-outs to include in the report.
          #
          #   @return [Array<Symbol, Telnyx::Models::Portouts::ExportPortoutsCsvReport::Filters::StatusIn>, nil]
          optional :status_in,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Portouts::ExportPortoutsCsvReport::Filters::StatusIn]
                   },
                   api_name: :status__in

          # @!method initialize(created_at_gt: nil, created_at_lt: nil, customer_reference_in: nil, end_user_name: nil, phone_numbers_overlaps: nil, status_in: nil)
          #   The filters to apply to the export port-out CSV report.
          #
          #   @param created_at_gt [Time] The date and time the port-out was created after.
          #
          #   @param created_at_lt [Time] The date and time the port-out was created before.
          #
          #   @param customer_reference_in [Array<String>] The customer reference of the port-outs to include in the report.
          #
          #   @param end_user_name [String] The end user name of the port-outs to include in the report.
          #
          #   @param phone_numbers_overlaps [Array<String>] A list of phone numbers that the port-outs phone numbers must overlap with.
          #
          #   @param status_in [Array<Symbol, Telnyx::Models::Portouts::ExportPortoutsCsvReport::Filters::StatusIn>] The status of the port-outs to include in the report.

          module StatusIn
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            AUTHORIZED = :authorized
            PORTED = :ported
            REJECTED = :rejected
            REJECTED_PENDING = :"rejected-pending"
            CANCELED = :canceled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
