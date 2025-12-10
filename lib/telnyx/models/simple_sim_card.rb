# frozen_string_literal: true

module Telnyx
  module Models
    class SimpleSimCard < Telnyx::Internal::Type::BaseModel
      # @!attribute authorized_imeis
      #   List of IMEIs authorized to use a given SIM card.
      #
      #   @return [Array<String>, nil]
      optional :authorized_imeis, Telnyx::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute sim_card_group_id
      #   The group SIMCardGroup identification. This attribute can be <code>null</code>
      #   when it's present in an associated resource.
      #
      #   @return [String, nil]
      optional :sim_card_group_id, String

      # @!attribute status
      #
      #   @return [Telnyx::Models::SimCardStatus, nil]
      optional :status, -> { Telnyx::SimCardStatus }

      # @!attribute tags
      #   Searchable tags associated with the SIM card
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute actions_in_progress
        #   Indicate whether the SIM card has any pending (in-progress) actions.
        #
        #   @return [Boolean, nil]
        optional :actions_in_progress, Telnyx::Internal::Type::Boolean

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute current_billing_period_consumed_data
        #   The SIM card consumption so far in the current billing cycle.
        #
        #   @return [Telnyx::Models::SimpleSimCard::CurrentBillingPeriodConsumedData, nil]
        optional :current_billing_period_consumed_data,
                 -> { Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData }

        # @!attribute data_limit
        #   The SIM card individual data limit configuration.
        #
        #   @return [Telnyx::Models::SimpleSimCard::DataLimit, nil]
        optional :data_limit, -> { Telnyx::SimpleSimCard::DataLimit }

        # @!attribute eid
        #   The Embedded Identity Document (eID) for eSIM cards.
        #
        #   @return [String, nil]
        optional :eid, String, nil?: true

        # @!attribute esim_installation_status
        #   The installation status of the eSIM. Only applicable for eSIM cards.
        #
        #   @return [Symbol, Telnyx::Models::SimpleSimCard::EsimInstallationStatus, nil]
        optional :esim_installation_status,
                 enum: -> {
                   Telnyx::SimpleSimCard::EsimInstallationStatus
                 },
                 nil?: true

        # @!attribute iccid
        #   The ICCID is the identifier of the specific SIM card/chip. Each SIM is
        #   internationally identified by its integrated circuit card identifier (ICCID).
        #   ICCIDs are stored in the SIM card's memory and are also engraved or printed on
        #   the SIM card body during a process called personalization.
        #
        #   @return [String, nil]
        optional :iccid, String

        # @!attribute imsi
        #   SIM cards are identified on their individual network operators by a unique
        #   International Mobile Subscriber Identity (IMSI). <br/> Mobile network operators
        #   connect mobile phone calls and communicate with their market SIM cards using
        #   their IMSIs. The IMSI is stored in the Subscriber Identity Module (SIM) inside
        #   the device and is sent by the device to the appropriate network. It is used to
        #   acquire the details of the device in the Home Location Register (HLR) or the
        #   Visitor Location Register (VLR).
        #
        #   @return [String, nil]
        optional :imsi, String

        # @!attribute msisdn
        #   Mobile Station International Subscriber Directory Number (MSISDN) is a number
        #   used to identify a mobile phone number internationally. <br/> MSISDN is defined
        #   by the E.164 numbering plan. It includes a country code and a National
        #   Destination Code which identifies the subscriber's operator.
        #
        #   @return [String, nil]
        optional :msisdn, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute resources_with_in_progress_actions
        #   List of resources with actions in progress.
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :resources_with_in_progress_actions,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute type
        #   The type of SIM card
        #
        #   @return [Symbol, Telnyx::Models::SimpleSimCard::Type, nil]
        optional :type, enum: -> { Telnyx::SimpleSimCard::Type }

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!attribute version
        #   The version of the SIM card.
        #
        #   @return [String, nil]
        optional :version, String
      end

      # @!method initialize(id: nil, actions_in_progress: nil, authorized_imeis: nil, created_at: nil, current_billing_period_consumed_data: nil, data_limit: nil, eid: nil, esim_installation_status: nil, iccid: nil, imsi: nil, msisdn: nil, record_type: nil, resources_with_in_progress_actions: nil, sim_card_group_id: nil, status: nil, tags: nil, type: nil, updated_at: nil, version: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimpleSimCard} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param actions_in_progress [Boolean] Indicate whether the SIM card has any pending (in-progress) actions.
      #
      #   @param authorized_imeis [Array<String>, nil] List of IMEIs authorized to use a given SIM card.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param current_billing_period_consumed_data [Telnyx::Models::SimpleSimCard::CurrentBillingPeriodConsumedData] The SIM card consumption so far in the current billing cycle.
      #
      #   @param data_limit [Telnyx::Models::SimpleSimCard::DataLimit] The SIM card individual data limit configuration.
      #
      #   @param eid [String, nil] The Embedded Identity Document (eID) for eSIM cards.
      #
      #   @param esim_installation_status [Symbol, Telnyx::Models::SimpleSimCard::EsimInstallationStatus, nil] The installation status of the eSIM. Only applicable for eSIM cards.
      #
      #   @param iccid [String] The ICCID is the identifier of the specific SIM card/chip. Each SIM is internati
      #
      #   @param imsi [String] SIM cards are identified on their individual network operators by a unique Inter
      #
      #   @param msisdn [String] Mobile Station International Subscriber Directory Number (MSISDN) is a number us
      #
      #   @param record_type [String]
      #
      #   @param resources_with_in_progress_actions [Array<Hash{Symbol=>Object}>] List of resources with actions in progress.
      #
      #   @param sim_card_group_id [String] The group SIMCardGroup identification. This attribute can be <code>null</code> w
      #
      #   @param status [Telnyx::Models::SimCardStatus]
      #
      #   @param tags [Array<String>] Searchable tags associated with the SIM card
      #
      #   @param type [Symbol, Telnyx::Models::SimpleSimCard::Type] The type of SIM card
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
      #
      #   @param version [String] The version of the SIM card.

      # @see Telnyx::Models::SimpleSimCard#current_billing_period_consumed_data
      class CurrentBillingPeriodConsumedData < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute unit
        #
        #   @return [String, nil]
        optional :unit, String

        # @!method initialize(amount: nil, unit: nil)
        #   The SIM card consumption so far in the current billing cycle.
        #
        #   @param amount [String]
        #   @param unit [String]
      end

      # @see Telnyx::Models::SimpleSimCard#data_limit
      class DataLimit < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute unit
        #
        #   @return [Symbol, Telnyx::Models::SimpleSimCard::DataLimit::Unit, nil]
        optional :unit, enum: -> { Telnyx::SimpleSimCard::DataLimit::Unit }

        # @!method initialize(amount: nil, unit: nil)
        #   The SIM card individual data limit configuration.
        #
        #   @param amount [String]
        #   @param unit [Symbol, Telnyx::Models::SimpleSimCard::DataLimit::Unit]

        # @see Telnyx::Models::SimpleSimCard::DataLimit#unit
        module Unit
          extend Telnyx::Internal::Type::Enum

          MB = :MB
          GB = :GB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The installation status of the eSIM. Only applicable for eSIM cards.
      #
      # @see Telnyx::Models::SimpleSimCard#esim_installation_status
      module EsimInstallationStatus
        extend Telnyx::Internal::Type::Enum

        RELEASED = :released
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of SIM card
      #
      # @see Telnyx::Models::SimpleSimCard#type
      module Type
        extend Telnyx::Internal::Type::Enum

        PHYSICAL = :physical
        ESIM = :esim

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
