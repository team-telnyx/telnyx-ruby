# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class ExportPortingOrdersCsvReport < Telnyx::Internal::Type::BaseModel
        # @!attribute filters
        #   The filters to apply to the export porting order CSV report.
        #
        #   @return [Telnyx::Models::Porting::ExportPortingOrdersCsvReport::Filters]
        required :filters, -> { Telnyx::Porting::ExportPortingOrdersCsvReport::Filters }

        # @!method initialize(filters:)
        #   The parameters for generating a porting orders CSV report.
        #
        #   @param filters [Telnyx::Models::Porting::ExportPortingOrdersCsvReport::Filters] The filters to apply to the export porting order CSV report.

        # @see Telnyx::Models::Porting::ExportPortingOrdersCsvReport#filters
        class Filters < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at_gt
          #   The date and time the porting order was created after.
          #
          #   @return [Time, nil]
          optional :created_at_gt, Time, api_name: :created_at__gt

          # @!attribute created_at_lt
          #   The date and time the porting order was created before.
          #
          #   @return [Time, nil]
          optional :created_at_lt, Time, api_name: :created_at__lt

          # @!attribute customer_reference_in
          #   The customer reference of the porting orders to include in the report.
          #
          #   @return [Array<String>, nil]
          optional :customer_reference_in,
                   Telnyx::Internal::Type::ArrayOf[String],
                   api_name: :customer_reference__in

          # @!attribute status_in
          #   The status of the porting orders to include in the report.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn>, nil]
          optional :status_in,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn]
                   },
                   api_name: :status__in

          # @!method initialize(created_at_gt: nil, created_at_lt: nil, customer_reference_in: nil, status_in: nil)
          #   The filters to apply to the export porting order CSV report.
          #
          #   @param created_at_gt [Time] The date and time the porting order was created after.
          #
          #   @param created_at_lt [Time] The date and time the porting order was created before.
          #
          #   @param customer_reference_in [Array<String>] The customer reference of the porting orders to include in the report.
          #
          #   @param status_in [Array<Symbol, Telnyx::Models::Porting::ExportPortingOrdersCsvReport::Filters::StatusIn>] The status of the porting orders to include in the report.

          module StatusIn
            extend Telnyx::Internal::Type::Enum

            DRAFT = :draft
            IN_PROCESS = :"in-process"
            SUBMITTED = :submitted
            EXCEPTION = :exception
            FOC_DATE_CONFIRMED = :"foc-date-confirmed"
            CANCEL_PENDING = :"cancel-pending"
            PORTED = :ported
            CANCELLED = :cancelled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
