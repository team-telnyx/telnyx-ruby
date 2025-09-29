# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup#create
          class NumberLookupCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute aggregation_type
            #   Type of aggregation for the report
            #
            #   @return [Symbol, Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType, nil]
            optional :aggregation_type,
                     enum: -> {
                       Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType
                     },
                     api_name: :aggregationType

            # @!attribute end_date
            #   End date for the usage report
            #
            #   @return [Date, nil]
            optional :end_date, Date, api_name: :endDate

            # @!attribute managed_accounts
            #   List of managed accounts to include in the report
            #
            #   @return [Array<String>, nil]
            optional :managed_accounts, Telnyx::Internal::Type::ArrayOf[String], api_name: :managedAccounts

            # @!attribute start_date
            #   Start date for the usage report
            #
            #   @return [Date, nil]
            optional :start_date, Date, api_name: :startDate

            # @!method initialize(aggregation_type: nil, end_date: nil, managed_accounts: nil, start_date: nil, request_options: {})
            #   @param aggregation_type [Symbol, Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType] Type of aggregation for the report
            #
            #   @param end_date [Date] End date for the usage report
            #
            #   @param managed_accounts [Array<String>] List of managed accounts to include in the report
            #
            #   @param start_date [Date] Start date for the usage report
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # Type of aggregation for the report
            module AggregationType
              extend Telnyx::Internal::Type::Enum

              ALL = :ALL
              BY_ORGANIZATION_MEMBER = :BY_ORGANIZATION_MEMBER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
