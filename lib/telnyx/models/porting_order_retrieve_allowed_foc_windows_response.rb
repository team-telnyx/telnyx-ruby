# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#retrieve_allowed_foc_windows
    class PortingOrderRetrieveAllowedFocWindowsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute ended_at
          #   ISO 8601 formatted date indicating the end of the range of foc window
          #
          #   @return [Time, nil]
          optional :ended_at, Time

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute started_at
          #   ISO 8601 formatted date indicating the start of the range of foc window.
          #
          #   @return [Time, nil]
          optional :started_at, Time
        end

        # @!method initialize(ended_at: nil, record_type: nil, started_at: nil)
        #   @param ended_at [Time] ISO 8601 formatted date indicating the end of the range of foc window
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param started_at [Time] ISO 8601 formatted date indicating the start of the range of foc window.
      end
    end
  end
end
