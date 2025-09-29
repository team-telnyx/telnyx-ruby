# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging#create
          class MessagingCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute end_time
            #   End time in ISO format. Note: If end time includes the last 4 hours, some MDRs
            #   might not appear in this report, due to wait time for downstream message
            #   delivery confirmation
            #
            #   @return [Time]
            required :end_time, Time

            # @!attribute start_time
            #   Start time in ISO format
            #
            #   @return [Time]
            required :start_time, Time

            # @!attribute connections
            #   List of connections to filter by
            #
            #   @return [Array<Integer>, nil]
            optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute directions
            #   List of directions to filter by (Inbound = 1, Outbound = 2)
            #
            #   @return [Array<Integer>, nil]
            optional :directions, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute filters
            #   List of filters to apply
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter>, nil]
            optional :filters,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter] }

            # @!attribute include_message_body
            #   Whether to include message body in the report
            #
            #   @return [Boolean, nil]
            optional :include_message_body, Telnyx::Internal::Type::Boolean

            # @!attribute managed_accounts
            #   List of managed accounts to include
            #
            #   @return [Array<String>, nil]
            optional :managed_accounts, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute profiles
            #   List of messaging profile IDs to filter by
            #
            #   @return [Array<String>, nil]
            optional :profiles, Telnyx::Internal::Type::ArrayOf[String]

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

            # @!attribute timezone
            #   Timezone for the report
            #
            #   @return [String, nil]
            optional :timezone, String

            # @!method initialize(end_time:, start_time:, connections: nil, directions: nil, filters: nil, include_message_body: nil, managed_accounts: nil, profiles: nil, record_types: nil, report_name: nil, select_all_managed_accounts: nil, timezone: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams}
            #   for more details.
            #
            #   @param end_time [Time] End time in ISO format. Note: If end time includes the last 4 hours, some MDRs m
            #
            #   @param start_time [Time] Start time in ISO format
            #
            #   @param connections [Array<Integer>] List of connections to filter by
            #
            #   @param directions [Array<Integer>] List of directions to filter by (Inbound = 1, Outbound = 2)
            #
            #   @param filters [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter>] List of filters to apply
            #
            #   @param include_message_body [Boolean] Whether to include message body in the report
            #
            #   @param managed_accounts [Array<String>] List of managed accounts to include
            #
            #   @param profiles [Array<String>] List of messaging profile IDs to filter by
            #
            #   @param record_types [Array<Integer>] List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
            #
            #   @param report_name [String] Name of the report
            #
            #   @param select_all_managed_accounts [Boolean] Whether to select all managed accounts
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
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter, nil]
              optional :cld_filter,
                       enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter }

              # @!attribute cli
              #   Calling line identification (caller ID)
              #
              #   @return [String, nil]
              optional :cli, String

              # @!attribute cli_filter
              #   Filter type for CLI matching
              #
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter, nil]
              optional :cli_filter,
                       enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter }

              # @!attribute filter_type
              #   Logical operator for combining filters
              #
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType, nil]
              optional :filter_type,
                       enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType }

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
              #   @param cld_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter] Filter type for CLD matching
              #
              #   @param cli [String] Calling line identification (caller ID)
              #
              #   @param cli_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter] Filter type for CLI matching
              #
              #   @param filter_type [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType] Logical operator for combining filters
              #
              #   @param tags_list [String] Tag name to filter by

              # Filter type for CLD matching
              #
              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter#cld_filter
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
              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter#cli_filter
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
              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter#filter_type
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
