# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class CdrDetailedReqResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the report
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute call_types
            #   List of call types (Inbound = 1, Outbound = 2)
            #
            #   @return [Array<Integer>, nil]
            optional :call_types, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute connections
            #   List of connections
            #
            #   @return [Array<Integer>, nil]
            optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute created_at
            #   Creation date of the report
            #
            #   @return [String, nil]
            optional :created_at, String

            # @!attribute end_time
            #   End time in ISO format
            #
            #   @return [String, nil]
            optional :end_time, String

            # @!attribute filters
            #   List of filters
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::Filter>, nil]
            optional :filters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::Filter] }

            # @!attribute managed_accounts
            #   List of managed accounts
            #
            #   @return [Array<String>, nil]
            optional :managed_accounts, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute record_types
            #   List of record types (Complete = 1, Incomplete = 2, Errors = 3)
            #
            #   @return [Array<Integer>, nil]
            optional :record_types, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute report_name
            #   Name of the report
            #
            #   @return [String, nil]
            optional :report_name, String

            # @!attribute report_url
            #   URL to download the report
            #
            #   @return [String, nil]
            optional :report_url, String

            # @!attribute retry_
            #   Number of retries
            #
            #   @return [Integer, nil]
            optional :retry_, Integer, api_name: :retry

            # @!attribute source
            #   Source of the report. Valid values: calls (default), call-control, fax-api,
            #   webrtc
            #
            #   @return [String, nil]
            optional :source, String

            # @!attribute start_time
            #   Start time in ISO format
            #
            #   @return [String, nil]
            optional :start_time, String

            # @!attribute status
            #   Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
            #
            #   @return [Integer, nil]
            optional :status, Integer

            # @!attribute timezone
            #   Timezone for the report
            #
            #   @return [String, nil]
            optional :timezone, String

            # @!attribute updated_at
            #   Last update date of the report
            #
            #   @return [String, nil]
            optional :updated_at, String

            # @!method initialize(id: nil, call_types: nil, connections: nil, created_at: nil, end_time: nil, filters: nil, managed_accounts: nil, record_type: nil, record_types: nil, report_name: nil, report_url: nil, retry_: nil, source: nil, start_time: nil, status: nil, timezone: nil, updated_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse}
            #   for more details.
            #
            #   Response object for CDR detailed report
            #
            #   @param id [String] Unique identifier for the report
            #
            #   @param call_types [Array<Integer>] List of call types (Inbound = 1, Outbound = 2)
            #
            #   @param connections [Array<Integer>] List of connections
            #
            #   @param created_at [String] Creation date of the report
            #
            #   @param end_time [String] End time in ISO format
            #
            #   @param filters [Array<Telnyx::Models::Legacy::Reporting::Filter>] List of filters
            #
            #   @param managed_accounts [Array<String>] List of managed accounts
            #
            #   @param record_type [String]
            #
            #   @param record_types [Array<Integer>] List of record types (Complete = 1, Incomplete = 2, Errors = 3)
            #
            #   @param report_name [String] Name of the report
            #
            #   @param report_url [String] URL to download the report
            #
            #   @param retry_ [Integer] Number of retries
            #
            #   @param source [String] Source of the report. Valid values: calls (default), call-control, fax-api, webr
            #
            #   @param start_time [String] Start time in ISO format
            #
            #   @param status [Integer] Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
            #
            #   @param timezone [String] Timezone for the report
            #
            #   @param updated_at [String] Last update date of the report
          end
        end
      end
    end
  end
end
