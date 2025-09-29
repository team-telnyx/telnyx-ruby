# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Messaging#list
          class MessagingListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Data>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Data] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta, nil]
            optional :meta, -> { Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Data>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta]

            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the resource
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute aggregation_type
              #   Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
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

              # @!attribute profiles
              #   List of messaging profile IDs
              #
              #   @return [Array<String>, nil]
              optional :profiles, Telnyx::Internal::Type::ArrayOf[String]

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
              #   Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
              #
              #   @return [Integer, nil]
              optional :status, Integer

              # @!attribute updated_at
              #
              #   @return [Time, nil]
              optional :updated_at, Time

              # @!method initialize(id: nil, aggregation_type: nil, connections: nil, created_at: nil, end_time: nil, profiles: nil, record_type: nil, report_url: nil, result: nil, start_time: nil, status: nil, updated_at: nil)
              #   Legacy V2 MDR usage report response
              #
              #   @param id [String] Identifies the resource
              #
              #   @param aggregation_type [Integer] Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
              #
              #   @param connections [Array<Integer>]
              #
              #   @param created_at [Time]
              #
              #   @param end_time [Time]
              #
              #   @param profiles [Array<String>] List of messaging profile IDs
              #
              #   @param record_type [String]
              #
              #   @param report_url [String]
              #
              #   @param result [Object]
              #
              #   @param start_time [Time]
              #
              #   @param status [Integer] Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
              #
              #   @param updated_at [Time]
            end

            # @see Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse#meta
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
