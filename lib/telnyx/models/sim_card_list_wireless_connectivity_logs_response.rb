# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#list_wireless_connectivity_logs
    class SimCardListWirelessConnectivityLogsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute sim_card_id
      #   The identification UUID of the related SIM card resource.
      #
      #   @return [String, nil]
      optional :sim_card_id, String

      response_only do
        # @!attribute id
        #   Uniquely identifies the session.
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute apn
        #   The Access Point Name (APN) identifies the packet data network that a mobile
        #   data user wants to communicate with.
        #
        #   @return [String, nil]
        optional :apn, String

        # @!attribute cell_id
        #   The cell ID to which the SIM connected.
        #
        #   @return [String, nil]
        optional :cell_id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the record was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute imei
        #   The International Mobile Equipment Identity (or IMEI) is a number, usually
        #   unique, that identifies the device currently being used connect to the network.
        #
        #   @return [String, nil]
        optional :imei, String

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

        # @!attribute last_seen
        #   ISO 8601 formatted date-time indicating when the last heartbeat to the device
        #   was successfully recorded.
        #
        #   @return [String, nil]
        optional :last_seen, String

        # @!attribute log_type
        #   The type of the session, 'registration' being the initial authentication session
        #   and 'data' the actual data transfer sessions.
        #
        #   @return [Symbol, Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::LogType, nil]
        optional :log_type, enum: -> { Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::LogType }

        # @!attribute mobile_country_code
        #   It's a three decimal digit that identifies a country.<br/><br/> This code is
        #   commonly seen joined with a Mobile Network Code (MNC) in a tuple that allows
        #   identifying a carrier known as PLMN (Public Land Mobile Network) code.
        #
        #   @return [String, nil]
        optional :mobile_country_code, String

        # @!attribute mobile_network_code
        #   It's a two to three decimal digits that identify a network.<br/><br/> This code
        #   is commonly seen joined with a Mobile Country Code (MCC) in a tuple that allows
        #   identifying a carrier known as PLMN (Public Land Mobile Network) code.
        #
        #   @return [String, nil]
        optional :mobile_network_code, String

        # @!attribute radio_access_technology
        #   The radio technology the SIM card used during the session.
        #
        #   @return [String, nil]
        optional :radio_access_technology, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute start_time
        #   ISO 8601 formatted date-time indicating when the session started.
        #
        #   @return [String, nil]
        optional :start_time, String

        # @!attribute state
        #   The state of the SIM card after when the session happened.
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute stop_time
        #   ISO 8601 formatted date-time indicating when the session ended.
        #
        #   @return [String, nil]
        optional :stop_time, String
      end

      # @!method initialize(id: nil, apn: nil, cell_id: nil, created_at: nil, imei: nil, imsi: nil, ipv4: nil, ipv6: nil, last_seen: nil, log_type: nil, mobile_country_code: nil, mobile_network_code: nil, radio_access_technology: nil, record_type: nil, sim_card_id: nil, start_time: nil, state: nil, stop_time: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardListWirelessConnectivityLogsResponse} for more details.
      #
      #   This object represents a wireless connectivity session log that happened through
      #   a SIM card. It aids in finding out potential problems when the SIM is not able
      #   to attach properly.
      #
      #   @param id [Integer] Uniquely identifies the session.
      #
      #   @param apn [String] The Access Point Name (APN) identifies the packet data network that a mobile dat
      #
      #   @param cell_id [String] The cell ID to which the SIM connected.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the record was created.
      #
      #   @param imei [String] The International Mobile Equipment Identity (or IMEI) is a number, usually uniqu
      #
      #   @param imsi [String] SIM cards are identified on their individual network operators by a unique Inter
      #
      #   @param ipv4 [String] The SIM's address in the currently connected network. This IPv4 address is usual
      #
      #   @param ipv6 [String] The SIM's address in the currently connected network. This IPv6 address is usual
      #
      #   @param last_seen [String] ISO 8601 formatted date-time indicating when the last heartbeat to the device wa
      #
      #   @param log_type [Symbol, Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::LogType] The type of the session, 'registration' being the initial authentication session
      #
      #   @param mobile_country_code [String] It's a three decimal digit that identifies a country.<br/><br/>
      #
      #   @param mobile_network_code [String] It's a two to three decimal digits that identify a network.<br/><br/>
      #
      #   @param radio_access_technology [String] The radio technology the SIM card used during the session.
      #
      #   @param record_type [String]
      #
      #   @param sim_card_id [String] The identification UUID of the related SIM card resource.
      #
      #   @param start_time [String] ISO 8601 formatted date-time indicating when the session started.
      #
      #   @param state [String] The state of the SIM card after when the session happened.
      #
      #   @param stop_time [String] ISO 8601 formatted date-time indicating when the session ended.

      # The type of the session, 'registration' being the initial authentication session
      # and 'data' the actual data transfer sessions.
      #
      # @see Telnyx::Models::SimCardListWirelessConnectivityLogsResponse#log_type
      module LogType
        extend Telnyx::Internal::Type::Enum

        REGISTRATION = :registration
        DATA = :data

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
