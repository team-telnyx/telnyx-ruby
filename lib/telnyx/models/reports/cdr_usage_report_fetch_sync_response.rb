# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::CdrUsageReports#fetch_sync
      class CdrUsageReportFetchSyncResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data]

        # @see Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the resource
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute aggregation_type
          #
          #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType, nil]
          optional :aggregation_type,
                   enum: -> { Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType }

          # @!attribute connections
          #
          #   @return [Array<Integer>, nil]
          optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute end_time
          #
          #   @return [Time, nil]
          optional :end_time, Time

          # @!attribute product_breakdown
          #
          #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown, nil]
          optional :product_breakdown,
                   enum: -> { Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown }

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute report_url
          #
          #   @return [String, nil]
          optional :report_url, String

          # @!attribute result
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :result, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute start_time
          #
          #   @return [Time, nil]
          optional :start_time, Time

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status }

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, aggregation_type: nil, connections: nil, created_at: nil, end_time: nil, product_breakdown: nil, record_type: nil, report_url: nil, result: nil, start_time: nil, status: nil, updated_at: nil)
          #   @param id [String] Identifies the resource
          #
          #   @param aggregation_type [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType]
          #
          #   @param connections [Array<Integer>]
          #
          #   @param created_at [Time]
          #
          #   @param end_time [Time]
          #
          #   @param product_breakdown [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown]
          #
          #   @param record_type [String]
          #
          #   @param report_url [String]
          #
          #   @param result [Hash{Symbol=>Object}]
          #
          #   @param start_time [Time]
          #
          #   @param status [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status]
          #
          #   @param updated_at [Time]

          # @see Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data#aggregation_type
          module AggregationType
            extend Telnyx::Internal::Type::Enum

            NO_AGGREGATION = :NO_AGGREGATION
            CONNECTION = :CONNECTION
            TAG = :TAG
            BILLING_GROUP = :BILLING_GROUP

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data#product_breakdown
          module ProductBreakdown
            extend Telnyx::Internal::Type::Enum

            NO_BREAKDOWN = :NO_BREAKDOWN
            DID_VS_TOLL_FREE = :DID_VS_TOLL_FREE
            COUNTRY = :COUNTRY
            DID_VS_TOLL_FREE_PER_COUNTRY = :DID_VS_TOLL_FREE_PER_COUNTRY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :PENDING
            COMPLETE = :COMPLETE
            FAILED = :FAILED
            EXPIRED = :EXPIRED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
