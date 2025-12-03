# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Reports#list_wdrs
    class ReportListWdrsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   WDR id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute cost
      #
      #   @return [Telnyx::Models::ReportListWdrsResponse::Cost, nil]
      optional :cost, -> { Telnyx::Models::ReportListWdrsResponse::Cost }

      # @!attribute created_at
      #   Record created time
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute downlink_data
      #
      #   @return [Telnyx::Models::ReportListWdrsResponse::DownlinkData, nil]
      optional :downlink_data, -> { Telnyx::Models::ReportListWdrsResponse::DownlinkData }

      # @!attribute duration_seconds
      #   Session duration in seconds.
      #
      #   @return [Float, nil]
      optional :duration_seconds, Float

      # @!attribute imsi
      #   International mobile subscriber identity.
      #
      #   @return [String, nil]
      optional :imsi, String

      # @!attribute mcc
      #   Mobile country code.
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute mnc
      #   Mobile network code.
      #
      #   @return [String, nil]
      optional :mnc, String

      # @!attribute phone_number
      #   Phone number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute rate
      #
      #   @return [Telnyx::Models::ReportListWdrsResponse::Rate, nil]
      optional :rate, -> { Telnyx::Models::ReportListWdrsResponse::Rate }

      # @!attribute record_type
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute sim_card_id
      #   Sim card unique identifier
      #
      #   @return [String, nil]
      optional :sim_card_id, String

      # @!attribute sim_group_id
      #   Sim group unique identifier
      #
      #   @return [String, nil]
      optional :sim_group_id, String

      # @!attribute sim_group_name
      #   Defined sim group name
      #
      #   @return [String, nil]
      optional :sim_group_name, String

      # @!attribute uplink_data
      #
      #   @return [Telnyx::Models::ReportListWdrsResponse::UplinkData, nil]
      optional :uplink_data, -> { Telnyx::Models::ReportListWdrsResponse::UplinkData }

      # @!method initialize(id: nil, cost: nil, created_at: nil, downlink_data: nil, duration_seconds: nil, imsi: nil, mcc: nil, mnc: nil, phone_number: nil, rate: nil, record_type: nil, sim_card_id: nil, sim_group_id: nil, sim_group_name: nil, uplink_data: nil)
      #   @param id [String] WDR id
      #
      #   @param cost [Telnyx::Models::ReportListWdrsResponse::Cost]
      #
      #   @param created_at [Time] Record created time
      #
      #   @param downlink_data [Telnyx::Models::ReportListWdrsResponse::DownlinkData]
      #
      #   @param duration_seconds [Float] Session duration in seconds.
      #
      #   @param imsi [String] International mobile subscriber identity.
      #
      #   @param mcc [String] Mobile country code.
      #
      #   @param mnc [String] Mobile network code.
      #
      #   @param phone_number [String] Phone number
      #
      #   @param rate [Telnyx::Models::ReportListWdrsResponse::Rate]
      #
      #   @param record_type [String]
      #
      #   @param sim_card_id [String] Sim card unique identifier
      #
      #   @param sim_group_id [String] Sim group unique identifier
      #
      #   @param sim_group_name [String] Defined sim group name
      #
      #   @param uplink_data [Telnyx::Models::ReportListWdrsResponse::UplinkData]

      # @see Telnyx::Models::ReportListWdrsResponse#cost
      class Cost < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   Final cost. Cost is calculated as rate \* unit
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute currency
        #   Currency of the rate and cost
        #
        #   @return [Symbol, Telnyx::Models::ReportListWdrsResponse::Cost::Currency, nil]
        optional :currency, enum: -> { Telnyx::Models::ReportListWdrsResponse::Cost::Currency }

        # @!method initialize(amount: nil, currency: nil)
        #   @param amount [String] Final cost. Cost is calculated as rate \* unit
        #
        #   @param currency [Symbol, Telnyx::Models::ReportListWdrsResponse::Cost::Currency] Currency of the rate and cost

        # Currency of the rate and cost
        #
        # @see Telnyx::Models::ReportListWdrsResponse::Cost#currency
        module Currency
          extend Telnyx::Internal::Type::Enum

          AUD = :AUD
          CAD = :CAD
          EUR = :EUR
          GBP = :GBP
          USD = :USD

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::ReportListWdrsResponse#downlink_data
      class DownlinkData < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   Downlink data
        #
        #   @return [Float, nil]
        optional :amount, Float

        # @!attribute unit
        #   Transmission unit
        #
        #   @return [Symbol, Telnyx::Models::ReportListWdrsResponse::DownlinkData::Unit, nil]
        optional :unit, enum: -> { Telnyx::Models::ReportListWdrsResponse::DownlinkData::Unit }

        # @!method initialize(amount: nil, unit: nil)
        #   @param amount [Float] Downlink data
        #
        #   @param unit [Symbol, Telnyx::Models::ReportListWdrsResponse::DownlinkData::Unit] Transmission unit

        # Transmission unit
        #
        # @see Telnyx::Models::ReportListWdrsResponse::DownlinkData#unit
        module Unit
          extend Telnyx::Internal::Type::Enum

          B = :B
          KB = :KB
          MB = :MB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::ReportListWdrsResponse#rate
      class Rate < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   Rate from which cost is calculated
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute currency
        #   Currency of the rate and cost
        #
        #   @return [Symbol, Telnyx::Models::ReportListWdrsResponse::Rate::Currency, nil]
        optional :currency, enum: -> { Telnyx::Models::ReportListWdrsResponse::Rate::Currency }

        # @!method initialize(amount: nil, currency: nil)
        #   @param amount [String] Rate from which cost is calculated
        #
        #   @param currency [Symbol, Telnyx::Models::ReportListWdrsResponse::Rate::Currency] Currency of the rate and cost

        # Currency of the rate and cost
        #
        # @see Telnyx::Models::ReportListWdrsResponse::Rate#currency
        module Currency
          extend Telnyx::Internal::Type::Enum

          AUD = :AUD
          CAD = :CAD
          EUR = :EUR
          GBP = :GBP
          USD = :USD

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::ReportListWdrsResponse#uplink_data
      class UplinkData < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   Uplink data
        #
        #   @return [Float, nil]
        optional :amount, Float

        # @!attribute unit
        #   Transmission unit
        #
        #   @return [Symbol, Telnyx::Models::ReportListWdrsResponse::UplinkData::Unit, nil]
        optional :unit, enum: -> { Telnyx::Models::ReportListWdrsResponse::UplinkData::Unit }

        # @!method initialize(amount: nil, unit: nil)
        #   @param amount [Float] Uplink data
        #
        #   @param unit [Symbol, Telnyx::Models::ReportListWdrsResponse::UplinkData::Unit] Transmission unit

        # Transmission unit
        #
        # @see Telnyx::Models::ReportListWdrsResponse::UplinkData#unit
        module Unit
          extend Telnyx::Internal::Type::Enum

          B = :B
          KB = :KB
          MB = :MB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
