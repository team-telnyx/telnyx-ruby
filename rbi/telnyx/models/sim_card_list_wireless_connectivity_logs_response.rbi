# typed: strong

module Telnyx
  module Models
    class SimCardListWirelessConnectivityLogsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardListWirelessConnectivityLogsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data
              ],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The identification UUID of the related SIM card resource.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # Uniquely identifies the session.
        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        # The Access Point Name (APN) identifies the packet data network that a mobile
        # data user wants to communicate with.
        sig { returns(T.nilable(String)) }
        attr_reader :apn

        sig { params(apn: String).void }
        attr_writer :apn

        # The cell ID to which the SIM connected.
        sig { returns(T.nilable(String)) }
        attr_reader :cell_id

        sig { params(cell_id: String).void }
        attr_writer :cell_id

        # ISO 8601 formatted date-time indicating when the record was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # The International Mobile Equipment Identity (or IMEI) is a number, usually
        # unique, that identifies the device currently being used connect to the network.
        sig { returns(T.nilable(String)) }
        attr_reader :imei

        sig { params(imei: String).void }
        attr_writer :imei

        # SIM cards are identified on their individual network operators by a unique
        # International Mobile Subscriber Identity (IMSI). <br/> Mobile network operators
        # connect mobile phone calls and communicate with their market SIM cards using
        # their IMSIs. The IMSI is stored in the Subscriber Identity Module (SIM) inside
        # the device and is sent by the device to the appropriate network. It is used to
        # acquire the details of the device in the Home Location Register (HLR) or the
        # Visitor Location Register (VLR).
        sig { returns(T.nilable(String)) }
        attr_reader :imsi

        sig { params(imsi: String).void }
        attr_writer :imsi

        # The SIM's address in the currently connected network. This IPv4 address is
        # usually obtained dynamically, so it may vary according to the location or new
        # connections.
        sig { returns(T.nilable(String)) }
        attr_reader :ipv4

        sig { params(ipv4: String).void }
        attr_writer :ipv4

        # The SIM's address in the currently connected network. This IPv6 address is
        # usually obtained dynamically, so it may vary according to the location or new
        # connections.
        sig { returns(T.nilable(String)) }
        attr_reader :ipv6

        sig { params(ipv6: String).void }
        attr_writer :ipv6

        # ISO 8601 formatted date-time indicating when the last heartbeat to the device
        # was successfully recorded.
        sig { returns(T.nilable(String)) }
        attr_reader :last_seen

        sig { params(last_seen: String).void }
        attr_writer :last_seen

        # The type of the session, 'registration' being the initial authentication session
        # and 'data' the actual data transfer sessions.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::TaggedSymbol
            )
          )
        end
        attr_reader :log_type

        sig do
          params(
            log_type:
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::OrSymbol
          ).void
        end
        attr_writer :log_type

        # It's a three decimal digit that identifies a country.<br/><br/> This code is
        # commonly seen joined with a Mobile Network Code (MNC) in a tuple that allows
        # identifying a carrier known as PLMN (Public Land Mobile Network) code.
        sig { returns(T.nilable(String)) }
        attr_reader :mobile_country_code

        sig { params(mobile_country_code: String).void }
        attr_writer :mobile_country_code

        # It's a two to three decimal digits that identify a network.<br/><br/> This code
        # is commonly seen joined with a Mobile Country Code (MCC) in a tuple that allows
        # identifying a carrier known as PLMN (Public Land Mobile Network) code.
        sig { returns(T.nilable(String)) }
        attr_reader :mobile_network_code

        sig { params(mobile_network_code: String).void }
        attr_writer :mobile_network_code

        # The radio technology the SIM card used during the session.
        sig { returns(T.nilable(String)) }
        attr_reader :radio_access_technology

        sig { params(radio_access_technology: String).void }
        attr_writer :radio_access_technology

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the session started.
        sig { returns(T.nilable(String)) }
        attr_reader :start_time

        sig { params(start_time: String).void }
        attr_writer :start_time

        # The state of the SIM card after when the session happened.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # ISO 8601 formatted date-time indicating when the session ended.
        sig { returns(T.nilable(String)) }
        attr_reader :stop_time

        sig { params(stop_time: String).void }
        attr_writer :stop_time

        # This object represents a wireless connectivity session log that happened through
        # a SIM card. It aids in finding out potential problems when the SIM is not able
        # to attach properly.
        sig do
          params(
            id: Integer,
            apn: String,
            cell_id: String,
            created_at: String,
            imei: String,
            imsi: String,
            ipv4: String,
            ipv6: String,
            last_seen: String,
            log_type:
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::OrSymbol,
            mobile_country_code: String,
            mobile_network_code: String,
            radio_access_technology: String,
            record_type: String,
            sim_card_id: String,
            start_time: String,
            state: String,
            stop_time: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the session.
          id: nil,
          # The Access Point Name (APN) identifies the packet data network that a mobile
          # data user wants to communicate with.
          apn: nil,
          # The cell ID to which the SIM connected.
          cell_id: nil,
          # ISO 8601 formatted date-time indicating when the record was created.
          created_at: nil,
          # The International Mobile Equipment Identity (or IMEI) is a number, usually
          # unique, that identifies the device currently being used connect to the network.
          imei: nil,
          # SIM cards are identified on their individual network operators by a unique
          # International Mobile Subscriber Identity (IMSI). <br/> Mobile network operators
          # connect mobile phone calls and communicate with their market SIM cards using
          # their IMSIs. The IMSI is stored in the Subscriber Identity Module (SIM) inside
          # the device and is sent by the device to the appropriate network. It is used to
          # acquire the details of the device in the Home Location Register (HLR) or the
          # Visitor Location Register (VLR).
          imsi: nil,
          # The SIM's address in the currently connected network. This IPv4 address is
          # usually obtained dynamically, so it may vary according to the location or new
          # connections.
          ipv4: nil,
          # The SIM's address in the currently connected network. This IPv6 address is
          # usually obtained dynamically, so it may vary according to the location or new
          # connections.
          ipv6: nil,
          # ISO 8601 formatted date-time indicating when the last heartbeat to the device
          # was successfully recorded.
          last_seen: nil,
          # The type of the session, 'registration' being the initial authentication session
          # and 'data' the actual data transfer sessions.
          log_type: nil,
          # It's a three decimal digit that identifies a country.<br/><br/> This code is
          # commonly seen joined with a Mobile Network Code (MNC) in a tuple that allows
          # identifying a carrier known as PLMN (Public Land Mobile Network) code.
          mobile_country_code: nil,
          # It's a two to three decimal digits that identify a network.<br/><br/> This code
          # is commonly seen joined with a Mobile Country Code (MCC) in a tuple that allows
          # identifying a carrier known as PLMN (Public Land Mobile Network) code.
          mobile_network_code: nil,
          # The radio technology the SIM card used during the session.
          radio_access_technology: nil,
          record_type: nil,
          # The identification UUID of the related SIM card resource.
          sim_card_id: nil,
          # ISO 8601 formatted date-time indicating when the session started.
          start_time: nil,
          # The state of the SIM card after when the session happened.
          state: nil,
          # ISO 8601 formatted date-time indicating when the session ended.
          stop_time: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              apn: String,
              cell_id: String,
              created_at: String,
              imei: String,
              imsi: String,
              ipv4: String,
              ipv6: String,
              last_seen: String,
              log_type:
                Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::TaggedSymbol,
              mobile_country_code: String,
              mobile_network_code: String,
              radio_access_technology: String,
              record_type: String,
              sim_card_id: String,
              start_time: String,
              state: String,
              stop_time: String
            }
          )
        end
        def to_hash
        end

        # The type of the session, 'registration' being the initial authentication session
        # and 'data' the actual data transfer sessions.
        module LogType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REGISTRATION =
            T.let(
              :registration,
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::TaggedSymbol
            )
          DATA =
            T.let(
              :data,
              Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data::LogType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
