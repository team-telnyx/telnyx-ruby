# typed: strong

module Telnyx
  module Models
    class SimpleSimCard < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SimpleSimCard, Telnyx::Internal::AnyHash) }

      # List of IMEIs authorized to use a given SIM card.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :authorized_imeis

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
        returns(
          T.nilable(Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData)
        )
      end
      attr_reader :current_billing_period_consumed_data

      sig do
        params(
          current_billing_period_consumed_data:
            Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData::OrHash
        ).void
      end
      attr_writer :current_billing_period_consumed_data

      # The SIM card individual data limit configuration.
      sig { returns(T.nilable(Telnyx::SimpleSimCard::DataLimit)) }
      attr_reader :data_limit

      sig { params(data_limit: Telnyx::SimpleSimCard::DataLimit::OrHash).void }
      attr_writer :data_limit

      # The Embedded Identity Document (eID) for eSIM cards.
      sig { returns(T.nilable(String)) }
      attr_accessor :eid

      # The installation status of the eSIM. Only applicable for eSIM cards.
      sig do
        returns(
          T.nilable(Telnyx::SimpleSimCard::EsimInstallationStatus::TaggedSymbol)
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

      # Mobile Station International Subscriber Directory Number (MSISDN) is a number
      # used to identify a mobile phone number internationally. <br/> MSISDN is defined
      # by the E.164 numbering plan. It includes a country code and a National
      # Destination Code which identifies the subscriber's operator.
      sig { returns(T.nilable(String)) }
      attr_reader :msisdn

      sig { params(msisdn: String).void }
      attr_writer :msisdn

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # List of resources with actions in progress.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :resources_with_in_progress_actions

      sig do
        params(
          resources_with_in_progress_actions:
            T::Array[T::Hash[Symbol, T.anything]]
        ).void
      end
      attr_writer :resources_with_in_progress_actions

      # The type of SIM card
      sig { returns(T.nilable(Telnyx::SimpleSimCard::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::SimpleSimCard::Type::OrSymbol).void }
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
            Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData::OrHash,
          data_limit: Telnyx::SimpleSimCard::DataLimit::OrHash,
          eid: T.nilable(String),
          esim_installation_status:
            T.nilable(Telnyx::SimpleSimCard::EsimInstallationStatus::OrSymbol),
          iccid: String,
          imsi: String,
          msisdn: String,
          record_type: String,
          resources_with_in_progress_actions:
            T::Array[T::Hash[Symbol, T.anything]],
          sim_card_group_id: String,
          status: Telnyx::SimCardStatus::OrHash,
          tags: T::Array[String],
          type: Telnyx::SimpleSimCard::Type::OrSymbol,
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
        # Mobile Station International Subscriber Directory Number (MSISDN) is a number
        # used to identify a mobile phone number internationally. <br/> MSISDN is defined
        # by the E.164 numbering plan. It includes a country code and a National
        # Destination Code which identifies the subscriber's operator.
        msisdn: nil,
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
              Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData,
            data_limit: Telnyx::SimpleSimCard::DataLimit,
            eid: T.nilable(String),
            esim_installation_status:
              T.nilable(
                Telnyx::SimpleSimCard::EsimInstallationStatus::TaggedSymbol
              ),
            iccid: String,
            imsi: String,
            msisdn: String,
            record_type: String,
            resources_with_in_progress_actions:
              T::Array[T::Hash[Symbol, T.anything]],
            sim_card_group_id: String,
            status: Telnyx::SimCardStatus,
            tags: T::Array[String],
            type: Telnyx::SimpleSimCard::Type::TaggedSymbol,
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
              Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData,
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

      class DataLimit < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimpleSimCard::DataLimit, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        sig do
          returns(
            T.nilable(Telnyx::SimpleSimCard::DataLimit::Unit::TaggedSymbol)
          )
        end
        attr_reader :unit

        sig do
          params(unit: Telnyx::SimpleSimCard::DataLimit::Unit::OrSymbol).void
        end
        attr_writer :unit

        # The SIM card individual data limit configuration.
        sig do
          params(
            amount: String,
            unit: Telnyx::SimpleSimCard::DataLimit::Unit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(amount: nil, unit: nil)
        end

        sig do
          override.returns(
            {
              amount: String,
              unit: Telnyx::SimpleSimCard::DataLimit::Unit::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Unit
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::SimpleSimCard::DataLimit::Unit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MB = T.let(:MB, Telnyx::SimpleSimCard::DataLimit::Unit::TaggedSymbol)
          GB = T.let(:GB, Telnyx::SimpleSimCard::DataLimit::Unit::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::SimpleSimCard::DataLimit::Unit::TaggedSymbol]
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
            T.all(Symbol, Telnyx::SimpleSimCard::EsimInstallationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELEASED =
          T.let(
            :released,
            Telnyx::SimpleSimCard::EsimInstallationStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Telnyx::SimpleSimCard::EsimInstallationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SimpleSimCard::EsimInstallationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of SIM card
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SimpleSimCard::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHYSICAL = T.let(:physical, Telnyx::SimpleSimCard::Type::TaggedSymbol)
        ESIM = T.let(:esim, Telnyx::SimpleSimCard::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::SimpleSimCard::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
