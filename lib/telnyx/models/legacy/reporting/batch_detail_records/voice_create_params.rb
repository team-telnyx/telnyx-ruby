# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#create
          class VoiceCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute end_time
            #   End time in ISO format
            #
            #   @return [Time]
            required :end_time, Time

            # @!attribute start_time
            #   Start time in ISO format
            #
            #   @return [Time]
            required :start_time, Time

            # @!attribute call_types
            #   List of call types to filter by (Inbound = 1, Outbound = 2)
            #
            #   @return [Array<Integer>, nil]
            optional :call_types, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute connections
            #   List of connections to filter by
            #
            #   @return [Array<Integer>, nil]
            optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute fields
            #   Set of fields to include in the report
            #
            #   @return [Array<String>, nil]
            optional :fields, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute filters
            #   List of filters to apply
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter>, nil]
            optional :filters,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter] }

            # @!attribute include_all_metadata
            #   Whether to include all metadata
            #
            #   @return [Boolean, nil]
            optional :include_all_metadata, Telnyx::Internal::Type::Boolean

            # @!attribute managed_accounts
            #   List of managed accounts to include
            #
            #   @return [Array<String>, nil]
            optional :managed_accounts, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute record_types
            #   List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
            #
            #   @return [Array<Integer>, nil]
            optional :record_types, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute report_name
            #   Name of the report
            #
            #   @return [String, nil]
            optional :report_name, String

            # @!attribute select_all_managed_accounts
            #   Whether to select all managed accounts
            #
            #   @return [Boolean, nil]
            optional :select_all_managed_accounts, Telnyx::Internal::Type::Boolean

            # @!attribute source
            #   Source of the report. Valid values: calls (default), call-control, fax-api,
            #   webrtc
            #
            #   @return [String, nil]
            optional :source, String

            # @!attribute timezone
            #   Timezone for the report
            #
            #   @return [String, nil]
            optional :timezone, String

            # @!method initialize(end_time:, start_time:, call_types: nil, connections: nil, fields: nil, filters: nil, include_all_metadata: nil, managed_accounts: nil, record_types: nil, report_name: nil, select_all_managed_accounts: nil, source: nil, timezone: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams} for
            #   more details.
            #
            #   @param end_time [Time] End time in ISO format
            #
            #   @param start_time [Time] Start time in ISO format
            #
            #   @param call_types [Array<Integer>] List of call types to filter by (Inbound = 1, Outbound = 2)
            #
            #   @param connections [Array<Integer>] List of connections to filter by
            #
            #   @param fields [Array<String>] Set of fields to include in the report
            #
            #   @param filters [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter>] List of filters to apply
            #
            #   @param include_all_metadata [Boolean] Whether to include all metadata
            #
            #   @param managed_accounts [Array<String>] List of managed accounts to include
            #
            #   @param record_types [Array<Integer>] List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
            #
            #   @param report_name [String] Name of the report
            #
            #   @param select_all_managed_accounts [Boolean] Whether to select all managed accounts
            #
            #   @param source [String] Source of the report. Valid values: calls (default), call-control, fax-api, webr
            #
            #   @param timezone [String] Timezone for the report
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::CldFilter, nil]
              optional :cld_filter,
                       enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::CldFilter }

              # @!attribute cli
              #   Calling line identification (caller ID)
              #
              #   @return [String, nil]
              optional :cli, String

              # @!attribute cli_filter
              #   Filter type for CLI matching
              #
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::CliFilter, nil]
              optional :cli_filter,
                       enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::CliFilter }

              # @!attribute filter_type
              #   Logical operator for combining filters
              #
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::FilterType, nil]
              optional :filter_type,
                       enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::FilterType }

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
              #   @param cld_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::CldFilter] Filter type for CLD matching
              #
              #   @param cli [String] Calling line identification (caller ID)
              #
              #   @param cli_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::CliFilter] Filter type for CLI matching
              #
              #   @param filter_type [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::FilterType] Logical operator for combining filters
              #
              #   @param tags_list [String] Tag name to filter by

              # Filter type for CLD matching
              #
              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter#cld_filter
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
              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter#cli_filter
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
              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter#filter_type
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
