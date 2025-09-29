# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#create
          class VoiceCreateResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   Response object for CDR detailed report
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data, nil]
            optional :data, -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data] Response object for CDR detailed report

            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
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
              #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter>, nil]
              optional :filters,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter] }

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
              #   {Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data}
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
              #   @param filters [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter>] List of filters
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

              class Filter < Telnyx::Internal::Type::BaseModel
                # @!attribute billing_group
                #   Billing group UUID to filter by
                #
                #   @return [String, nil]
                optional :billing_group, String

                # @!attribute cld
                #   Called line identification (destination number)
                #
                #   @return [String, nil]
                optional :cld, String

                # @!attribute cld_filter
                #   Filter type for CLD matching
                #
                #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::CldFilter, nil]
                optional :cld_filter,
                         enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::CldFilter }

                # @!attribute cli
                #   Calling line identification (caller ID)
                #
                #   @return [String, nil]
                optional :cli, String

                # @!attribute cli_filter
                #   Filter type for CLI matching
                #
                #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::CliFilter, nil]
                optional :cli_filter,
                         enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::CliFilter }

                # @!attribute filter_type
                #   Logical operator for combining filters
                #
                #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::FilterType, nil]
                optional :filter_type,
                         enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::FilterType }

                # @!attribute tags_list
                #   Tag name to filter by
                #
                #   @return [String, nil]
                optional :tags_list, String

                # @!method initialize(billing_group: nil, cld: nil, cld_filter: nil, cli: nil, cli_filter: nil, filter_type: nil, tags_list: nil)
                #   Query filter criteria. Note: The first filter object must specify filter_type as
                #   'and'. You cannot follow an 'or' with another 'and'.
                #
                #   @param billing_group [String] Billing group UUID to filter by
                #
                #   @param cld [String] Called line identification (destination number)
                #
                #   @param cld_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::CldFilter] Filter type for CLD matching
                #
                #   @param cli [String] Calling line identification (caller ID)
                #
                #   @param cli_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::CliFilter] Filter type for CLI matching
                #
                #   @param filter_type [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter::FilterType] Logical operator for combining filters
                #
                #   @param tags_list [String] Tag name to filter by

                # Filter type for CLD matching
                #
                # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter#cld_filter
                module CldFilter
                  extend Telnyx::Internal::Type::Enum

                  CONTAINS = :contains
                  STARTS_WITH = :starts_with
                  ENDS_WITH = :ends_with

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # Filter type for CLI matching
                #
                # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter#cli_filter
                module CliFilter
                  extend Telnyx::Internal::Type::Enum

                  CONTAINS = :contains
                  STARTS_WITH = :starts_with
                  ENDS_WITH = :ends_with

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # Logical operator for combining filters
                #
                # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse::Data::Filter#filter_type
                module FilterType
                  extend Telnyx::Internal::Type::Enum

                  AND = :and
                  OR = :or

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end
        end
      end
    end
  end
end
