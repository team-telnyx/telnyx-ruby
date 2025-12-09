# frozen_string_literal: true

module Telnyx
  module Models
    class SimCard < Telnyx::Internal::Type::BaseModel
      # @!attribute authorized_imeis
      #   List of IMEIs authorized to use a given SIM card.
      #
      #   @return [Array<String>, nil]
      optional :authorized_imeis, Telnyx::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute data_limit
      #   The SIM card individual data limit configuration.
      #
      #   @return [Telnyx::Models::SimCard::DataLimit, nil]
      optional :data_limit, -> { Telnyx::SimCard::DataLimit }

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
        #   @return [Telnyx::Models::SimCard::CurrentBillingPeriodConsumedData, nil]
        optional :current_billing_period_consumed_data, -> { Telnyx::SimCard::CurrentBillingPeriodConsumedData }

        # @!attribute current_device_location
        #   Current physical location data of a given SIM card. Accuracy is given in meters.
        #
        #   @return [Telnyx::Models::SimCard::CurrentDeviceLocation, nil]
        optional :current_device_location, -> { Telnyx::SimCard::CurrentDeviceLocation }

        # @!attribute current_imei
        #   IMEI of the device where a given SIM card is currently being used.
        #
        #   @return [String, nil]
        optional :current_imei, String

        # @!attribute current_mcc
        #   Mobile Country Code of the current network to which the SIM card is connected.
        #   It's a three decimal digit that identifies a country.<br/><br/> This code is
        #   commonly seen joined with a Mobile Network Code (MNC) in a tuple that allows
        #   identifying a carrier known as PLMN (Public Land Mobile Network) code.
        #
        #   @return [String, nil]
        optional :current_mcc, String

        # @!attribute current_mnc
        #   Mobile Network Code of the current network to which the SIM card is connected.
        #   It's a two to three decimal digits that identify a network.<br/><br/> This code
        #   is commonly seen joined with a Mobile Country Code (MCC) in a tuple that allows
        #   identifying a carrier known as PLMN (Public Land Mobile Network) code.
        #
        #   @return [String, nil]
        optional :current_mnc, String

        # @!attribute eid
        #   The Embedded Identity Document (eID) for eSIM cards.
        #
        #   @return [String, nil]
        optional :eid, String, nil?: true

        # @!attribute esim_installation_status
        #   The installation status of the eSIM. Only applicable for eSIM cards.
        #
        #   @return [Symbol, Telnyx::Models::SimCard::EsimInstallationStatus, nil]
        optional :esim_installation_status, enum: -> { Telnyx::SimCard::EsimInstallationStatus }, nil?: true

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

        # @!attribute ipv4
        #   The SIM's address in the currently connected network. This IPv4 address is
        #   usually obtained dynamically, so it may vary according to the location or new
        #   connections.
        #
        #   @return [String, nil]
        optional :ipv4, String

        # @!attribute ipv6
        #   The SIM's address in the currently connected network. This IPv6 address is
        #   usually obtained dynamically, so it may vary according to the location or new
        #   connections.
        #
        #   @return [String, nil]
        optional :ipv6, String

        # @!attribute live_data_session
        #   Indicates whether the device is actively connected to a network and able to run
        #   data.
        #
        #   @return [Symbol, Telnyx::Models::SimCard::LiveDataSession, nil]
        optional :live_data_session, enum: -> { Telnyx::SimCard::LiveDataSession }

        # @!attribute msisdn
        #   Mobile Station International Subscriber Directory Number (MSISDN) is a number
        #   used to identify a mobile phone number internationally. <br/> MSISDN is defined
        #   by the E.164 numbering plan. It includes a country code and a National
        #   Destination Code which identifies the subscriber's operator.
        #
        #   @return [String, nil]
        optional :msisdn, String

        # @!attribute pin_puk_codes
        #   PIN and PUK codes for the SIM card. Only available when
        #   include_pin_puk_codes=true is set in the request.
        #
        #   @return [Telnyx::Models::SimCard::PinPukCodes, nil]
        optional :pin_puk_codes, -> { Telnyx::SimCard::PinPukCodes }

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
        #   @return [Symbol, Telnyx::Models::SimCard::Type, nil]
        optional :type, enum: -> { Telnyx::SimCard::Type }

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

      # @!method initialize(id: nil, actions_in_progress: nil, authorized_imeis: nil, created_at: nil, current_billing_period_consumed_data: nil, current_device_location: nil, current_imei: nil, current_mcc: nil, current_mnc: nil, data_limit: nil, eid: nil, esim_installation_status: nil, iccid: nil, imsi: nil, ipv4: nil, ipv6: nil, live_data_session: nil, msisdn: nil, pin_puk_codes: nil, record_type: nil, resources_with_in_progress_actions: nil, sim_card_group_id: nil, status: nil, tags: nil, type: nil, updated_at: nil, version: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::SimCard}
      #   for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param actions_in_progress [Boolean] Indicate whether the SIM card has any pending (in-progress) actions.
      #
      #   @param authorized_imeis [Array<String>, nil] List of IMEIs authorized to use a given SIM card.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param current_billing_period_consumed_data [Telnyx::Models::SimCard::CurrentBillingPeriodConsumedData] The SIM card consumption so far in the current billing cycle.
      #
      #   @param current_device_location [Telnyx::Models::SimCard::CurrentDeviceLocation] Current physical location data of a given SIM card. Accuracy is given in meters.
      #
      #   @param current_imei [String] IMEI of the device where a given SIM card is currently being used.
      #
      #   @param current_mcc [String] Mobile Country Code of the current network to which the SIM card is connected. I
      #
      #   @param current_mnc [String] Mobile Network Code of the current network to which the SIM card is connected. I
      #
      #   @param data_limit [Telnyx::Models::SimCard::DataLimit] The SIM card individual data limit configuration.
      #
      #   @param eid [String, nil] The Embedded Identity Document (eID) for eSIM cards.
      #
      #   @param esim_installation_status [Symbol, Telnyx::Models::SimCard::EsimInstallationStatus, nil] The installation status of the eSIM. Only applicable for eSIM cards.
      #
      #   @param iccid [String] The ICCID is the identifier of the specific SIM card/chip. Each SIM is internati
      #
      #   @param imsi [String] SIM cards are identified on their individual network operators by a unique Inter
      #
      #   @param ipv4 [String] The SIM's address in the currently connected network. This IPv4 address is usual
      #
      #   @param ipv6 [String] The SIM's address in the currently connected network. This IPv6 address is usual
      #
      #   @param live_data_session [Symbol, Telnyx::Models::SimCard::LiveDataSession] Indicates whether the device is actively connected to a network and able to run
      #
      #   @param msisdn [String] Mobile Station International Subscriber Directory Number (MSISDN) is a number us
      #
      #   @param pin_puk_codes [Telnyx::Models::SimCard::PinPukCodes] PIN and PUK codes for the SIM card. Only available when include_pin_puk_codes=tr
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
      #   @param type [Symbol, Telnyx::Models::SimCard::Type] The type of SIM card
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
      #
      #   @param version [String] The version of the SIM card.

      # @see Telnyx::Models::SimCard#current_billing_period_consumed_data
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

      # @see Telnyx::Models::SimCard#current_device_location
      class CurrentDeviceLocation < Telnyx::Internal::Type::BaseModel
        # @!attribute accuracy
        #
        #   @return [Integer, nil]
        optional :accuracy, Integer

        # @!attribute accuracy_unit
        #
        #   @return [String, nil]
        optional :accuracy_unit, String

        # @!attribute latitude
        #
        #   @return [String, nil]
        optional :latitude, String

        # @!attribute longitude
        #
        #   @return [String, nil]
        optional :longitude, String

        # @!method initialize(accuracy: nil, accuracy_unit: nil, latitude: nil, longitude: nil)
        #   Current physical location data of a given SIM card. Accuracy is given in meters.
        #
        #   @param accuracy [Integer]
        #   @param accuracy_unit [String]
        #   @param latitude [String]
        #   @param longitude [String]
      end

      # @see Telnyx::Models::SimCard#data_limit
      class DataLimit < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute unit
        #
        #   @return [Symbol, Telnyx::Models::SimCard::DataLimit::Unit, nil]
        optional :unit, enum: -> { Telnyx::SimCard::DataLimit::Unit }

        # @!method initialize(amount: nil, unit: nil)
        #   The SIM card individual data limit configuration.
        #
        #   @param amount [String]
        #   @param unit [Symbol, Telnyx::Models::SimCard::DataLimit::Unit]

        # @see Telnyx::Models::SimCard::DataLimit#unit
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
      # @see Telnyx::Models::SimCard#esim_installation_status
      module EsimInstallationStatus
        extend Telnyx::Internal::Type::Enum

        RELEASED = :released
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Indicates whether the device is actively connected to a network and able to run
      # data.
      #
      # @see Telnyx::Models::SimCard#live_data_session
      module LiveDataSession
        extend Telnyx::Internal::Type::Enum

        CONNECTED = :connected
        DISCONNECTED = :disconnected
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::SimCard#pin_puk_codes
      class PinPukCodes < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute pin1
          #   The primary Personal Identification Number (PIN) for the SIM card. This is a
          #   4-digit code used to protect the SIM card from unauthorized use.
          #
          #   @return [String, nil]
          optional :pin1, String

          # @!attribute pin2
          #   The secondary Personal Identification Number (PIN2) for the SIM card. This is a
          #   4-digit code used for additional security features.
          #
          #   @return [String, nil]
          optional :pin2, String

          # @!attribute puk1
          #   The primary Personal Unblocking Key (PUK1) for the SIM card. This is an 8-digit
          #   code used to unlock the SIM card if PIN1 is entered incorrectly multiple times.
          #
          #   @return [String, nil]
          optional :puk1, String

          # @!attribute puk2
          #   The secondary Personal Unblocking Key (PUK2) for the SIM card. This is an
          #   8-digit code used to unlock the SIM card if PIN2 is entered incorrectly multiple
          #   times.
          #
          #   @return [String, nil]
          optional :puk2, String
        end

        # @!method initialize(pin1: nil, pin2: nil, puk1: nil, puk2: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCard::PinPukCodes} for more details.
        #
        #   PIN and PUK codes for the SIM card. Only available when
        #   include_pin_puk_codes=true is set in the request.
        #
        #   @param pin1 [String] The primary Personal Identification Number (PIN) for the SIM card. This is a 4-d
        #
        #   @param pin2 [String] The secondary Personal Identification Number (PIN2) for the SIM card. This is a
        #
        #   @param puk1 [String] The primary Personal Unblocking Key (PUK1) for the SIM card. This is an 8-digit
        #
        #   @param puk2 [String] The secondary Personal Unblocking Key (PUK2) for the SIM card. This is an 8-digi
      end

      # The type of SIM card
      #
      # @see Telnyx::Models::SimCard#type
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
