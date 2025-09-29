# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Voice#list
          class VoiceListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Data>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Data] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Meta, nil]
            optional :meta, -> { Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Meta }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Data>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Meta]

            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the resource
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute aggregation_type
              #   Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
              #
              #   @return [Integer, nil]
              optional :aggregation_type, Integer

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
              #   Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
              #   vs Toll-free per Country = 3
              #
              #   @return [Integer, nil]
              optional :product_breakdown, Integer

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
              #   @return [Object, nil]
              optional :result, Telnyx::Internal::Type::Unknown

              # @!attribute start_time
              #
              #   @return [Time, nil]
              optional :start_time, Time

              # @!attribute status
              #   Status of the report: Pending = 1, Complete = 2, Failed = 3, Expired = 4
              #
              #   @return [Integer, nil]
              optional :status, Integer

              # @!attribute updated_at
              #
              #   @return [Time, nil]
              optional :updated_at, Time

              # @!method initialize(id: nil, aggregation_type: nil, connections: nil, created_at: nil, end_time: nil, product_breakdown: nil, record_type: nil, report_url: nil, result: nil, start_time: nil, status: nil, updated_at: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Data} for
              #   more details.
              #
              #   Legacy V2 CDR usage report response
              #
              #   @param id [String] Identifies the resource
              #
              #   @param aggregation_type [Integer] Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
              #
              #   @param connections [Array<Integer>]
              #
              #   @param created_at [Time]
              #
              #   @param end_time [Time]
              #
              #   @param product_breakdown [Integer] Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
              #
              #   @param record_type [String]
              #
              #   @param report_url [String]
              #
              #   @param result [Object]
              #
              #   @param start_time [Time]
              #
              #   @param status [Integer] Status of the report: Pending = 1, Complete = 2, Failed = 3, Expired = 4
              #
              #   @param updated_at [Time]
            end

            # @see Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse#meta
            class Meta < Telnyx::Internal::Type::BaseModel
              # @!attribute page_number
              #
              #   @return [Integer, nil]
              optional :page_number, Integer

              # @!attribute page_size
              #
              #   @return [Integer, nil]
              optional :page_size, Integer

              # @!attribute total_pages
              #
              #   @return [Integer, nil]
              optional :total_pages, Integer

              # @!attribute total_results
              #
              #   @return [Integer, nil]
              optional :total_results, Integer

              # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
              #   @param page_number [Integer]
              #   @param page_size [Integer]
              #   @param total_pages [Integer]
              #   @param total_results [Integer]
            end
          end
        end
      end
    end
  end
end
