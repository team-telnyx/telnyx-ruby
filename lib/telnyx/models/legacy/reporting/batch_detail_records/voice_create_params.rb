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
            #   @return [Array<Telnyx::Models::Legacy::Reporting::Filter>, nil]
            optional :filters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::Filter] }

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
            #   @param filters [Array<Telnyx::Models::Legacy::Reporting::Filter>] List of filters to apply
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
          end
        end
      end
    end
  end
end
