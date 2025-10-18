# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Reports#list_mdrs
    class ReportListMdrsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ReportListMdrsResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ReportListMdrsResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Reports::PaginationMetaReporting, nil]
      optional :meta, -> { Telnyx::Reports::PaginationMetaReporting }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ReportListMdrsResponse::Data>]
      #   @param meta [Telnyx::Models::Reports::PaginationMetaReporting]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Id of message detail record
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute cld
        #   The destination number for a call, or the callee
        #
        #   @return [String, nil]
        optional :cld, String

        # @!attribute cli
        #   The number associated with the person initiating the call, or the caller
        #
        #   @return [String, nil]
        optional :cli, String

        # @!attribute cost
        #   Final cost. Cost is calculated as rate \* parts
        #
        #   @return [String, nil]
        optional :cost, String

        # @!attribute created_at
        #   Message sent time
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute currency
        #   Currency of the rate and cost
        #
        #   @return [Symbol, Telnyx::Models::ReportListMdrsResponse::Data::Currency, nil]
        optional :currency, enum: -> { Telnyx::Models::ReportListMdrsResponse::Data::Currency }

        # @!attribute direction
        #   Direction of message - inbound or outbound.
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute message_type
        #   Type of message
        #
        #   @return [Symbol, Telnyx::Models::ReportListMdrsResponse::Data::MessageType, nil]
        optional :message_type, enum: -> { Telnyx::Models::ReportListMdrsResponse::Data::MessageType }

        # @!attribute parts
        #   Number of parts this message has. Max number of character is 160. If message
        #   contains more characters then that it will be broken down in multiple parts
        #
        #   @return [Float, nil]
        optional :parts, Float

        # @!attribute profile_name
        #   Configured profile name. New profiles can be created and configured on Telnyx
        #   portal
        #
        #   @return [String, nil]
        optional :profile_name, String

        # @!attribute rate
        #   Rate applied to the message
        #
        #   @return [String, nil]
        optional :rate, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   Message status
        #
        #   @return [Symbol, Telnyx::Models::ReportListMdrsResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::ReportListMdrsResponse::Data::Status }

        # @!method initialize(id: nil, cld: nil, cli: nil, cost: nil, created_at: nil, currency: nil, direction: nil, message_type: nil, parts: nil, profile_name: nil, rate: nil, record_type: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ReportListMdrsResponse::Data} for more details.
        #
        #   @param id [String] Id of message detail record
        #
        #   @param cld [String] The destination number for a call, or the callee
        #
        #   @param cli [String] The number associated with the person initiating the call, or the caller
        #
        #   @param cost [String] Final cost. Cost is calculated as rate \* parts
        #
        #   @param created_at [Time] Message sent time
        #
        #   @param currency [Symbol, Telnyx::Models::ReportListMdrsResponse::Data::Currency] Currency of the rate and cost
        #
        #   @param direction [String] Direction of message - inbound or outbound.
        #
        #   @param message_type [Symbol, Telnyx::Models::ReportListMdrsResponse::Data::MessageType] Type of message
        #
        #   @param parts [Float] Number of parts this message has. Max number of character is 160. If message con
        #
        #   @param profile_name [String] Configured profile name. New profiles can be created and configured on Telnyx po
        #
        #   @param rate [String] Rate applied to the message
        #
        #   @param record_type [String]
        #
        #   @param status [Symbol, Telnyx::Models::ReportListMdrsResponse::Data::Status] Message status

        # Currency of the rate and cost
        #
        # @see Telnyx::Models::ReportListMdrsResponse::Data#currency
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

        # Type of message
        #
        # @see Telnyx::Models::ReportListMdrsResponse::Data#message_type
        module MessageType
          extend Telnyx::Internal::Type::Enum

          SMS = :SMS
          MMS = :MMS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Message status
        #
        # @see Telnyx::Models::ReportListMdrsResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          GW_TIMEOUT = :GW_TIMEOUT
          DELIVERED = :DELIVERED
          DLR_UNCONFIRMED = :DLR_UNCONFIRMED
          DLR_TIMEOUT = :DLR_TIMEOUT
          RECEIVED = :RECEIVED
          GW_REJECT = :GW_REJECT
          FAILED = :FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
