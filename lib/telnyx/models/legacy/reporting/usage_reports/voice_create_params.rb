# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Voice#create
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

            # @!attribute aggregation_type
            #   Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
            #
            #   @return [Integer, nil]
            optional :aggregation_type, Integer

            # @!attribute connections
            #   List of connections to filter by
            #
            #   @return [Array<Integer>, nil]
            optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute managed_accounts
            #   List of managed accounts to include
            #
            #   @return [Array<String>, nil]
            optional :managed_accounts, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute product_breakdown
            #   Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
            #   vs Toll-free per Country = 3
            #
            #   @return [Integer, nil]
            optional :product_breakdown, Integer

            # @!attribute select_all_managed_accounts
            #   Whether to select all managed accounts
            #
            #   @return [Boolean, nil]
            optional :select_all_managed_accounts, Telnyx::Internal::Type::Boolean

            # @!method initialize(end_time:, start_time:, aggregation_type: nil, connections: nil, managed_accounts: nil, product_breakdown: nil, select_all_managed_accounts: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateParams} for more
            #   details.
            #
            #   @param end_time [Time] End time in ISO format
            #
            #   @param start_time [Time] Start time in ISO format
            #
            #   @param aggregation_type [Integer] Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
            #
            #   @param connections [Array<Integer>] List of connections to filter by
            #
            #   @param managed_accounts [Array<String>] List of managed accounts to include
            #
            #   @param product_breakdown [Integer] Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
            #
            #   @param select_all_managed_accounts [Boolean] Whether to select all managed accounts
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
