# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
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
          #   @return [Symbol, Telnyx::Models::Legacy::Reporting::Filter::CldFilter, nil]
          optional :cld_filter, enum: -> { Telnyx::Legacy::Reporting::Filter::CldFilter }

          # @!attribute cli
          #   Calling line identification (caller ID)
          #
          #   @return [String, nil]
          optional :cli, String

          # @!attribute cli_filter
          #   Filter type for CLI matching
          #
          #   @return [Symbol, Telnyx::Models::Legacy::Reporting::Filter::CliFilter, nil]
          optional :cli_filter, enum: -> { Telnyx::Legacy::Reporting::Filter::CliFilter }

          # @!attribute filter_type
          #   Logical operator for combining filters
          #
          #   @return [Symbol, Telnyx::Models::Legacy::Reporting::Filter::FilterType, nil]
          optional :filter_type, enum: -> { Telnyx::Legacy::Reporting::Filter::FilterType }

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
          #   @param cld_filter [Symbol, Telnyx::Models::Legacy::Reporting::Filter::CldFilter] Filter type for CLD matching
          #
          #   @param cli [String] Calling line identification (caller ID)
          #
          #   @param cli_filter [Symbol, Telnyx::Models::Legacy::Reporting::Filter::CliFilter] Filter type for CLI matching
          #
          #   @param filter_type [Symbol, Telnyx::Models::Legacy::Reporting::Filter::FilterType] Logical operator for combining filters
          #
          #   @param tags_list [String] Tag name to filter by

          # Filter type for CLD matching
          #
          # @see Telnyx::Models::Legacy::Reporting::Filter#cld_filter
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
          # @see Telnyx::Models::Legacy::Reporting::Filter#cli_filter
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
          # @see Telnyx::Models::Legacy::Reporting::Filter#filter_type
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
