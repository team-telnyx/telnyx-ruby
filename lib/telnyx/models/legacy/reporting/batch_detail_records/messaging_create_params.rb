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
            #   @return [Array<Telnyx::Models::Legacy::Reporting::Filter>, nil]
            optional :filters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::Filter] }

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
            #   @param filters [Array<Telnyx::Models::Legacy::Reporting::Filter>] List of filters to apply
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
          end
        end
      end
    end
  end
end
