# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Messaging#create
          class MessagingCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute aggregation_type
            #   Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
            #
            #   @return [Integer]
            required :aggregation_type, Integer

            # @!attribute end_time
            #
            #   @return [Time, nil]
            optional :end_time, Time

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

            # @!attribute select_all_managed_accounts
            #
            #   @return [Boolean, nil]
            optional :select_all_managed_accounts, Telnyx::Internal::Type::Boolean

            # @!attribute start_time
            #
            #   @return [Time, nil]
            optional :start_time, Time

            # @!method initialize(aggregation_type:, end_time: nil, managed_accounts: nil, profiles: nil, select_all_managed_accounts: nil, start_time: nil, request_options: {})
            #   @param aggregation_type [Integer] Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
            #
            #   @param end_time [Time]
            #
            #   @param managed_accounts [Array<String>] List of managed accounts to include
            #
            #   @param profiles [Array<String>] List of messaging profile IDs to filter by
            #
            #   @param select_all_managed_accounts [Boolean]
            #
            #   @param start_time [Time]
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
