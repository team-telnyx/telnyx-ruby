# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#list
      class MdrUsageReport < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the resource
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute aggregation_type
        #
        #   @return [Symbol, Telnyx::Models::Reports::MdrUsageReport::AggregationType, nil]
        optional :aggregation_type, enum: -> { Telnyx::Reports::MdrUsageReport::AggregationType }

        # @!attribute connections
        #
        #   @return [Array<Integer>, nil]
        optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute end_date
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute profiles
        #
        #   @return [String, nil]
        optional :profiles, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute report_url
        #
        #   @return [String, nil]
        optional :report_url, String

        # @!attribute result
        #
        #   @return [Array<Telnyx::Models::Reports::MdrUsageReport::Result>, nil]
        optional :result, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Reports::MdrUsageReport::Result] }

        # @!attribute start_date
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::Reports::MdrUsageReport::Status, nil]
        optional :status, enum: -> { Telnyx::Reports::MdrUsageReport::Status }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, aggregation_type: nil, connections: nil, created_at: nil, end_date: nil, profiles: nil, record_type: nil, report_url: nil, result: nil, start_date: nil, status: nil, updated_at: nil)
        #   @param id [String] Identifies the resource
        #
        #   @param aggregation_type [Symbol, Telnyx::Models::Reports::MdrUsageReport::AggregationType]
        #
        #   @param connections [Array<Integer>]
        #
        #   @param created_at [Time]
        #
        #   @param end_date [Time]
        #
        #   @param profiles [String]
        #
        #   @param record_type [String]
        #
        #   @param report_url [String]
        #
        #   @param result [Array<Telnyx::Models::Reports::MdrUsageReport::Result>]
        #
        #   @param start_date [Time]
        #
        #   @param status [Symbol, Telnyx::Models::Reports::MdrUsageReport::Status]
        #
        #   @param updated_at [Time]

        # @see Telnyx::Models::Reports::MdrUsageReport#aggregation_type
        module AggregationType
          extend Telnyx::Internal::Type::Enum

          NO_AGGREGATION = :NO_AGGREGATION
          PROFILE = :PROFILE
          TAGS = :TAGS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Result < Telnyx::Internal::Type::BaseModel
          # @!attribute carrier_passthrough_fee
          #
          #   @return [String, nil]
          optional :carrier_passthrough_fee, String

          # @!attribute connection
          #
          #   @return [String, nil]
          optional :connection, String

          # @!attribute cost
          #
          #   @return [String, nil]
          optional :cost, String

          # @!attribute currency
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute delivered
          #
          #   @return [String, nil]
          optional :delivered, String

          # @!attribute direction
          #
          #   @return [String, nil]
          optional :direction, String

          # @!attribute message_type
          #
          #   @return [String, nil]
          optional :message_type, String

          # @!attribute parts
          #
          #   @return [String, nil]
          optional :parts, String

          # @!attribute product
          #
          #   @return [String, nil]
          optional :product, String

          # @!attribute profile_id
          #
          #   @return [String, nil]
          optional :profile_id, String

          # @!attribute received
          #
          #   @return [String, nil]
          optional :received, String

          # @!attribute sent
          #
          #   @return [String, nil]
          optional :sent, String

          # @!attribute tags
          #
          #   @return [String, nil]
          optional :tags, String

          # @!attribute tn_type
          #
          #   @return [String, nil]
          optional :tn_type, String

          # @!method initialize(carrier_passthrough_fee: nil, connection: nil, cost: nil, currency: nil, delivered: nil, direction: nil, message_type: nil, parts: nil, product: nil, profile_id: nil, received: nil, sent: nil, tags: nil, tn_type: nil)
          #   @param carrier_passthrough_fee [String]
          #   @param connection [String]
          #   @param cost [String]
          #   @param currency [String]
          #   @param delivered [String]
          #   @param direction [String]
          #   @param message_type [String]
          #   @param parts [String]
          #   @param product [String]
          #   @param profile_id [String]
          #   @param received [String]
          #   @param sent [String]
          #   @param tags [String]
          #   @param tn_type [String]
        end

        # @see Telnyx::Models::Reports::MdrUsageReport#status
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

    MdrUsageReport = Reports::MdrUsageReport
  end
end
