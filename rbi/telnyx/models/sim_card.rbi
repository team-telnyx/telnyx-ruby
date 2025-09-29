# typed: strong

module Telnyx
  module Models
    class SimCard < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SimCard, Telnyx::Internal::AnyHash) }

      # List of IMEIs authorized to use a given SIM card.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :authorized_imeis

      # The SIM card individual data limit configuration.
      sig { returns(T.nilable(Telnyx::SimCard::DataLimit)) }
      attr_reader :data_limit

      sig { params(data_limit: Telnyx::SimCard::DataLimit::OrHash).void }
      attr_writer :data_limit

      # The group SIMCardGroup identification. This attribute can be <code>null</code>
      # when it's present in an associated resource.
      sig { returns(T.nilable(String)) }
      attr_reader :sim_card_group_id

      sig { params(sim_card_group_id: String).void }
      attr_writer :sim_card_group_id

      sig { returns(T.nilable(Telnyx::SimCardStatus)) }
      attr_reader :status

      sig { params(status: Telnyx::SimCardStatus::OrHash).void }
      attr_writer :status

      # Searchable tags associated with the SIM card
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Indicate whether the SIM card has any pending (in-progress) actions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :actions_in_progress

      sig { params(actions_in_progress: T::Boolean).void }
      attr_writer :actions_in_progress

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # The SIM card consumption so far in the current billing cycle.
      sig do
        returns(T.nilable(Telnyx::SimCard::CurrentBillingPeriodConsumedData))
      end
      attr_reader :current_billing_period_consumed_data

      sig do
        params(
          current_billing_period_consumed_data:
            Telnyx::SimCard::CurrentBillingPeriodConsumedData::OrHash
        ).void
      end
      attr_writer :current_billing_period_consumed_data

      # Current physical location data of a given SIM card. Accuracy is given in meters.
      sig { returns(T.nilable(Telnyx::SimCard::CurrentDeviceLocation)) }
      attr_reader :current_device_location

      sig do
        params(
          current_device_location:
            Telnyx::SimCard::CurrentDeviceLocation::OrHash
        ).void
      end
      attr_writer :current_device_location

      # IMEI of the device where a given SIM card is currently being used.
      sig { returns(T.nilable(String)) }
      attr_reader :current_imei

      sig { params(current_imei: String).void }
      attr_writer :current_imei

      # Mobile Country Code of the current network to which the SIM card is connected.
      # It's a three decimal digit that identifies a country.<br/><br/> This code is
      # commonly seen joined with a Mobile Network Code (MNC) in a tuple that allows
      # identifying a carrier known as PLMN (Public Land Mobile Network) code.
      sig { returns(T.nilable(String)) }
      attr_reader :current_mcc

      sig { params(current_mcc: String).void }
      attr_writer :current_mcc

      # Mobile Network Code of the current network to which the SIM card is connected.
      # It's a two to three decimal digits that identify a network.<br/><br/> This code
      # is commonly seen joined with a Mobile Country Code (MCC) in a tuple that allows
      # identifying a carrier known as PLMN (Public Land Mobile Network) code.
      sig { returns(T.nilable(String)) }
      attr_reader :current_mnc

      sig { params(current_mnc: String).void }
      attr_writer :current_mnc

      # The Embedded Identity Document (eID) for eSIM cards.
      sig { returns(T.nilable(String)) }
      attr_accessor :eid

      # The installation status of the eSIM. Only applicable for eSIM cards.
      sig do
        returns(
          T.nilable(Telnyx::SimCard::EsimInstallationStatus::TaggedSymbol)
        )
      end
      attr_accessor :esim_installation_status

      # The ICCID is the identifier of the specific SIM card/chip. Each SIM is
      # internationally identified by its integrated circuit card identifier (ICCID).
      # ICCIDs are stored in the SIM card's memory and are also engraved or printed on
      # the SIM card body during a process called personalization.
      sig { returns(T.nilable(String)) }
      attr_reader :iccid

      sig { params(iccid: String).void }
      attr_writer :iccid

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

      # Indicates whether the device is actively connected to a network and able to run
      # data.
      sig { returns(T.nilable(Telnyx::SimCard::LiveDataSession::TaggedSymbol)) }
      attr_reader :live_data_session

      sig do
        params(
          live_data_session: Telnyx::SimCard::LiveDataSession::OrSymbol
        ).void
      end
      attr_writer :live_data_session

      # Mobile Station International Subscriber Directory Number (MSISDN) is a number
      # used to identify a mobile phone number internationally. <br/> MSISDN is defined
      # by the E.164 numbering plan. It includes a country code and a National
      # Destination Code which identifies the subscriber's operator.
      sig { returns(T.nilable(String)) }
      attr_reader :msisdn

      sig { params(msisdn: String).void }
      attr_writer :msisdn

      # PIN and PUK codes for the SIM card. Only available when
      # include_pin_puk_codes=true is set in the request.
      sig { returns(T.nilable(Telnyx::SimCard::PinPukCodes)) }
      attr_reader :pin_puk_codes

      sig { params(pin_puk_codes: Telnyx::SimCard::PinPukCodes::OrHash).void }
      attr_writer :pin_puk_codes

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # List of resources with actions in progress.
      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :resources_with_in_progress_actions

      sig do
        params(resources_with_in_progress_actions: T::Array[T.anything]).void
      end
      attr_writer :resources_with_in_progress_actions

      # The type of SIM card
      sig { returns(T.nilable(Telnyx::SimCard::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::SimCard::Type::OrSymbol).void }
      attr_writer :type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The version of the SIM card.
      sig { returns(T.nilable(String)) }
      attr_reader :version

      sig { params(version: String).void }
      attr_writer :version

      sig do
        params(
          id: String,
          actions_in_progress: T::Boolean,
          authorized_imeis: T.nilable(T::Array[String]),
          created_at: String,
          current_billing_period_consumed_data:
            Telnyx::SimCard::CurrentBillingPeriodConsumedData::OrHash,
          current_device_location:
            Telnyx::SimCard::CurrentDeviceLocation::OrHash,
          current_imei: String,
          current_mcc: String,
          current_mnc: String,
          data_limit: Telnyx::SimCard::DataLimit::OrHash,
          eid: T.nilable(String),
          esim_installation_status:
            T.nilable(Telnyx::SimCard::EsimInstallationStatus::OrSymbol),
          iccid: String,
          imsi: String,
          ipv4: String,
          ipv6: String,
          live_data_session: Telnyx::SimCard::LiveDataSession::OrSymbol,
          msisdn: String,
          pin_puk_codes: Telnyx::SimCard::PinPukCodes::OrHash,
          record_type: String,
          resources_with_in_progress_actions: T::Array[T.anything],
          sim_card_group_id: String,
          status: Telnyx::SimCardStatus::OrHash,
          tags: T::Array[String],
          type: Telnyx::SimCard::Type::OrSymbol,
          updated_at: String,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # Indicate whether the SIM card has any pending (in-progress) actions.
        actions_in_progress: nil,
        # List of IMEIs authorized to use a given SIM card.
        authorized_imeis: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # The SIM card consumption so far in the current billing cycle.
        current_billing_period_consumed_data: nil,
        # Current physical location data of a given SIM card. Accuracy is given in meters.
        current_device_location: nil,
        # IMEI of the device where a given SIM card is currently being used.
        current_imei: nil,
        # Mobile Country Code of the current network to which the SIM card is connected.
        # It's a three decimal digit that identifies a country.<br/><br/> This code is
        # commonly seen joined with a Mobile Network Code (MNC) in a tuple that allows
        # identifying a carrier known as PLMN (Public Land Mobile Network) code.
        current_mcc: nil,
        # Mobile Network Code of the current network to which the SIM card is connected.
        # It's a two to three decimal digits that identify a network.<br/><br/> This code
        # is commonly seen joined with a Mobile Country Code (MCC) in a tuple that allows
        # identifying a carrier known as PLMN (Public Land Mobile Network) code.
        current_mnc: nil,
        # The SIM card individual data limit configuration.
        data_limit: nil,
        # The Embedded Identity Document (eID) for eSIM cards.
        eid: nil,
        # The installation status of the eSIM. Only applicable for eSIM cards.
        esim_installation_status: nil,
        # The ICCID is the identifier of the specific SIM card/chip. Each SIM is
        # internationally identified by its integrated circuit card identifier (ICCID).
        # ICCIDs are stored in the SIM card's memory and are also engraved or printed on
        # the SIM card body during a process called personalization.
        iccid: nil,
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
        # Indicates whether the device is actively connected to a network and able to run
        # data.
        live_data_session: nil,
        # Mobile Station International Subscriber Directory Number (MSISDN) is a number
        # used to identify a mobile phone number internationally. <br/> MSISDN is defined
        # by the E.164 numbering plan. It includes a country code and a National
        # Destination Code which identifies the subscriber's operator.
        msisdn: nil,
        # PIN and PUK codes for the SIM card. Only available when
        # include_pin_puk_codes=true is set in the request.
        pin_puk_codes: nil,
        record_type: nil,
        # List of resources with actions in progress.
        resources_with_in_progress_actions: nil,
        # The group SIMCardGroup identification. This attribute can be <code>null</code>
        # when it's present in an associated resource.
        sim_card_group_id: nil,
        status: nil,
        # Searchable tags associated with the SIM card
        tags: nil,
        # The type of SIM card
        type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil,
        # The version of the SIM card.
        version: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            actions_in_progress: T::Boolean,
            authorized_imeis: T.nilable(T::Array[String]),
            created_at: String,
            current_billing_period_consumed_data:
              Telnyx::SimCard::CurrentBillingPeriodConsumedData,
            current_device_location: Telnyx::SimCard::CurrentDeviceLocation,
            current_imei: String,
            current_mcc: String,
            current_mnc: String,
            data_limit: Telnyx::SimCard::DataLimit,
            eid: T.nilable(String),
            esim_installation_status:
              T.nilable(Telnyx::SimCard::EsimInstallationStatus::TaggedSymbol),
            iccid: String,
            imsi: String,
            ipv4: String,
            ipv6: String,
            live_data_session: Telnyx::SimCard::LiveDataSession::TaggedSymbol,
            msisdn: String,
            pin_puk_codes: Telnyx::SimCard::PinPukCodes,
            record_type: String,
            resources_with_in_progress_actions: T::Array[T.anything],
            sim_card_group_id: String,
            status: Telnyx::SimCardStatus,
            tags: T::Array[String],
            type: Telnyx::SimCard::Type::TaggedSymbol,
            updated_at: String,
            version: String
          }
        )
      end
      def to_hash
      end

      class CurrentBillingPeriodConsumedData < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCard::CurrentBillingPeriodConsumedData,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        sig { returns(T.nilable(String)) }
        attr_reader :unit

        sig { params(unit: String).void }
        attr_writer :unit

        # The SIM card consumption so far in the current billing cycle.
        sig { params(amount: String, unit: String).returns(T.attached_class) }
        def self.new(amount: nil, unit: nil)
        end

        sig { override.returns({ amount: String, unit: String }) }
        def to_hash
        end
      end

      class CurrentDeviceLocation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCard::CurrentDeviceLocation,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :accuracy

        sig { params(accuracy: Integer).void }
        attr_writer :accuracy

        sig { returns(T.nilable(String)) }
        attr_reader :accuracy_unit

        sig { params(accuracy_unit: String).void }
        attr_writer :accuracy_unit

        sig { returns(T.nilable(String)) }
        attr_reader :latitude

        sig { params(latitude: String).void }
        attr_writer :latitude

        sig { returns(T.nilable(String)) }
        attr_reader :longitude

        sig { params(longitude: String).void }
        attr_writer :longitude

        # Current physical location data of a given SIM card. Accuracy is given in meters.
        sig do
          params(
            accuracy: Integer,
            accuracy_unit: String,
            latitude: String,
            longitude: String
          ).returns(T.attached_class)
        end
        def self.new(
          accuracy: nil,
          accuracy_unit: nil,
          latitude: nil,
          longitude: nil
        )
        end

        sig do
          override.returns(
            {
              accuracy: Integer,
              accuracy_unit: String,
              latitude: String,
              longitude: String
            }
          )
        end
        def to_hash
        end
      end

      class DataLimit < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCard::DataLimit, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        sig do
          returns(T.nilable(Telnyx::SimCard::DataLimit::Unit::TaggedSymbol))
        end
        attr_reader :unit

        sig { params(unit: Telnyx::SimCard::DataLimit::Unit::OrSymbol).void }
        attr_writer :unit

        # The SIM card individual data limit configuration.
        sig do
          params(
            amount: String,
            unit: Telnyx::SimCard::DataLimit::Unit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(amount: nil, unit: nil)
        end

        sig do
          override.returns(
            {
              amount: String,
              unit: Telnyx::SimCard::DataLimit::Unit::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Unit
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::SimCard::DataLimit::Unit) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MB = T.let(:MB, Telnyx::SimCard::DataLimit::Unit::TaggedSymbol)
          GB = T.let(:GB, Telnyx::SimCard::DataLimit::Unit::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::SimCard::DataLimit::Unit::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The installation status of the eSIM. Only applicable for eSIM cards.
      module EsimInstallationStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SimCard::EsimInstallationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELEASED =
          T.let(
            :released,
            Telnyx::SimCard::EsimInstallationStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Telnyx::SimCard::EsimInstallationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::SimCard::EsimInstallationStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Indicates whether the device is actively connected to a network and able to run
      # data.
      module LiveDataSession
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SimCard::LiveDataSession) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONNECTED =
          T.let(:connected, Telnyx::SimCard::LiveDataSession::TaggedSymbol)
        DISCONNECTED =
          T.let(:disconnected, Telnyx::SimCard::LiveDataSession::TaggedSymbol)
        UNKNOWN =
          T.let(:unknown, Telnyx::SimCard::LiveDataSession::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::SimCard::LiveDataSession::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PinPukCodes < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCard::PinPukCodes, Telnyx::Internal::AnyHash)
          end

        # The primary Personal Identification Number (PIN) for the SIM card. This is a
        # 4-digit code used to protect the SIM card from unauthorized use.
        sig { returns(T.nilable(String)) }
        attr_reader :pin1

        sig { params(pin1: String).void }
        attr_writer :pin1

        # The secondary Personal Identification Number (PIN2) for the SIM card. This is a
        # 4-digit code used for additional security features.
        sig { returns(T.nilable(String)) }
        attr_reader :pin2

        sig { params(pin2: String).void }
        attr_writer :pin2

        # The primary Personal Unblocking Key (PUK1) for the SIM card. This is an 8-digit
        # code used to unlock the SIM card if PIN1 is entered incorrectly multiple times.
        sig { returns(T.nilable(String)) }
        attr_reader :puk1

        sig { params(puk1: String).void }
        attr_writer :puk1

        # The secondary Personal Unblocking Key (PUK2) for the SIM card. This is an
        # 8-digit code used to unlock the SIM card if PIN2 is entered incorrectly multiple
        # times.
        sig { returns(T.nilable(String)) }
        attr_reader :puk2

        sig { params(puk2: String).void }
        attr_writer :puk2

        # PIN and PUK codes for the SIM card. Only available when
        # include_pin_puk_codes=true is set in the request.
        sig do
          params(
            pin1: String,
            pin2: String,
            puk1: String,
            puk2: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The primary Personal Identification Number (PIN) for the SIM card. This is a
          # 4-digit code used to protect the SIM card from unauthorized use.
          pin1: nil,
          # The secondary Personal Identification Number (PIN2) for the SIM card. This is a
          # 4-digit code used for additional security features.
          pin2: nil,
          # The primary Personal Unblocking Key (PUK1) for the SIM card. This is an 8-digit
          # code used to unlock the SIM card if PIN1 is entered incorrectly multiple times.
          puk1: nil,
          # The secondary Personal Unblocking Key (PUK2) for the SIM card. This is an
          # 8-digit code used to unlock the SIM card if PIN2 is entered incorrectly multiple
          # times.
          puk2: nil
        )
        end

        sig do
          override.returns(
            { pin1: String, pin2: String, puk1: String, puk2: String }
          )
        end
        def to_hash
        end
      end

      # The type of SIM card
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::SimCard::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHYSICAL = T.let(:physical, Telnyx::SimCard::Type::TaggedSymbol)
        ESIM = T.let(:esim, Telnyx::SimCard::Type::TaggedSymbol)

        sig { override.returns(T::Array[Telnyx::SimCard::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
