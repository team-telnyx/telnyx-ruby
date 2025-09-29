# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging#delete
          class MessagingDeleteResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data, nil]
            optional :data,
                     -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data]

            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the resource
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute connections
              #
              #   @return [Array<Integer>, nil]
              optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute created_at
              #
              #   @return [Time, nil]
              optional :created_at, Time

              # @!attribute directions
              #
              #   @return [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction>, nil]
              optional :directions,
                       -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction] }

              # @!attribute end_date
              #
              #   @return [Time, nil]
              optional :end_date, Time

              # @!attribute filters
              #
              #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter>, nil]
              optional :filters,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter] }

              # @!attribute profiles
              #   List of messaging profile IDs
              #
              #   @return [Array<String>, nil]
              optional :profiles, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute record_type
              #
              #   @return [String, nil]
              optional :record_type, String

              # @!attribute record_types
              #
              #   @return [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType>, nil]
              optional :record_types,
                       -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType] }

              # @!attribute report_name
              #
              #   @return [String, nil]
              optional :report_name, String

              # @!attribute report_url
              #
              #   @return [String, nil]
              optional :report_url, String

              # @!attribute start_date
              #
              #   @return [Time, nil]
              optional :start_date, Time

              # @!attribute status
              #
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status, nil]
              optional :status,
                       enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status }

              # @!attribute updated_at
              #
              #   @return [Time, nil]
              optional :updated_at, Time

              # @!method initialize(id: nil, connections: nil, created_at: nil, directions: nil, end_date: nil, filters: nil, profiles: nil, record_type: nil, record_types: nil, report_name: nil, report_url: nil, start_date: nil, status: nil, updated_at: nil)
              #   @param id [String] Identifies the resource
              #
              #   @param connections [Array<Integer>]
              #
              #   @param created_at [Time]
              #
              #   @param directions [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction>]
              #
              #   @param end_date [Time]
              #
              #   @param filters [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter>]
              #
              #   @param profiles [Array<String>] List of messaging profile IDs
              #
              #   @param record_type [String]
              #
              #   @param record_types [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType>]
              #
              #   @param report_name [String]
              #
              #   @param report_url [String]
              #
              #   @param start_date [Time]
              #
              #   @param status [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status]
              #
              #   @param updated_at [Time]

              module Direction
                extend Telnyx::Internal::Type::Enum

                INBOUND = :INBOUND
                OUTBOUND = :OUTBOUND

                # @!method self.values
                #   @return [Array<Symbol>]
              end

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
                #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter, nil]
                optional :cld_filter,
                         enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter }

                # @!attribute cli
                #   Calling line identification (caller ID)
                #
                #   @return [String, nil]
                optional :cli, String

                # @!attribute cli_filter
                #   Filter type for CLI matching
                #
                #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter, nil]
                optional :cli_filter,
                         enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter }

                # @!attribute filter_type
                #   Logical operator for combining filters
                #
                #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType, nil]
                optional :filter_type,
                         enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType }

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
                #   @param cld_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter] Filter type for CLD matching
                #
                #   @param cli [String] Calling line identification (caller ID)
                #
                #   @param cli_filter [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter] Filter type for CLI matching
                #
                #   @param filter_type [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType] Logical operator for combining filters
                #
                #   @param tags_list [String] Tag name to filter by

                # Filter type for CLD matching
                #
                # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter#cld_filter
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
                # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter#cli_filter
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
                # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter#filter_type
                module FilterType
                  extend Telnyx::Internal::Type::Enum

                  AND = :and
                  OR = :or

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              module RecordType
                extend Telnyx::Internal::Type::Enum

                INCOMPLETE = :INCOMPLETE
                COMPLETED = :COMPLETED
                ERRORS = :ERRORS

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data#status
              module Status
                extend Telnyx::Internal::Type::Enum

                PENDING = :PENDING
                COMPLETE = :COMPLETE
                FAILED = :FAILED
                EXPIRED = :EXPIRED

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
