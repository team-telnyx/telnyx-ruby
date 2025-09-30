# typed: strong

module Telnyx
  module Models
    class PhoneNumberDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumberDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::PhoneNumberDeleteResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::PhoneNumberDeleteResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::PhoneNumberDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::PhoneNumberDeleteResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumberDeleteResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the billing group associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_id

        sig { params(billing_group_id: String).void }
        attr_writer :billing_group_id

        # Identifies the connection associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # A customer reference string for customer look ups.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # If someone attempts to port your phone number away from Telnyx and your phone
        # number has an external PIN set, Telnyx will attempt to verify that you provided
        # the correct external PIN to the winning carrier. Note that not all carriers
        # cooperate with this security mechanism.
        sig { returns(T.nilable(String)) }
        attr_reader :external_pin

        sig { params(external_pin: String).void }
        attr_writer :external_pin

        # Identifies the messaging profile associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        # The name of the messaging profile associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_name

        sig { params(messaging_profile_name: String).void }
        attr_writer :messaging_profile_name

        # A list of user-assigned tags to help manage the phone number.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Indicates if call forwarding will be enabled for this number if forwards_to and
        # forwarding_type are filled in. Defaults to true for backwards compatibility with
        # APIV1 use of numbers endpoints.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :call_forwarding_enabled

        sig { params(call_forwarding_enabled: T::Boolean).void }
        attr_writer :call_forwarding_enabled

        # Indicates whether call recording is enabled for this number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :call_recording_enabled

        sig { params(call_recording_enabled: T::Boolean).void }
        attr_writer :call_recording_enabled

        # Indicates whether caller ID is enabled for this number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :caller_id_name_enabled

        sig { params(caller_id_name_enabled: T::Boolean).void }
        attr_writer :caller_id_name_enabled

        # Indicates whether a CNAM listing is enabled for this number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cnam_listing_enabled

        sig { params(cnam_listing_enabled: T::Boolean).void }
        attr_writer :cnam_listing_enabled

        # The user-assigned name of the connection to be associated with this phone
        # number.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_name

        sig { params(connection_name: String).void }
        attr_writer :connection_name

        # ISO 8601 formatted date indicating when the time it took to activate after the
        # purchase.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # Indicates whether deletion lock is enabled for this number. When enabled, this
        # prevents the phone number from being deleted via the API or Telnyx portal.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deletion_lock_enabled

        sig { params(deletion_lock_enabled: T::Boolean).void }
        attr_writer :deletion_lock_enabled

        # Identifies the emergency address associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :emergency_address_id

        sig { params(emergency_address_id: String).void }
        attr_writer :emergency_address_id

        # Indicates whether emergency services are enabled for this number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :emergency_enabled

        sig { params(emergency_enabled: T::Boolean).void }
        attr_writer :emergency_enabled

        # The +E.164-formatted phone number associated with this record.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # The phone number's type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # ISO 8601 formatted date indicating the time the request was made to purchase the
        # number.
        sig { returns(T.nilable(String)) }
        attr_reader :purchased_at

        sig { params(purchased_at: String).void }
        attr_writer :purchased_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The phone number's current status.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Indicates whether T38 Fax Gateway for inbound calls to this number.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :t38_fax_gateway_enabled

        sig { params(t38_fax_gateway_enabled: T::Boolean).void }
        attr_writer :t38_fax_gateway_enabled

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            billing_group_id: String,
            call_forwarding_enabled: T::Boolean,
            call_recording_enabled: T::Boolean,
            caller_id_name_enabled: T::Boolean,
            cnam_listing_enabled: T::Boolean,
            connection_id: String,
            connection_name: String,
            created_at: String,
            customer_reference: String,
            deletion_lock_enabled: T::Boolean,
            emergency_address_id: String,
            emergency_enabled: T::Boolean,
            external_pin: String,
            messaging_profile_id: String,
            messaging_profile_name: String,
            phone_number: String,
            phone_number_type:
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::OrSymbol,
            purchased_at: String,
            record_type: String,
            status:
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::OrSymbol,
            t38_fax_gateway_enabled: T::Boolean,
            tags: T::Array[String],
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # Identifies the billing group associated with the phone number.
          billing_group_id: nil,
          # Indicates if call forwarding will be enabled for this number if forwards_to and
          # forwarding_type are filled in. Defaults to true for backwards compatibility with
          # APIV1 use of numbers endpoints.
          call_forwarding_enabled: nil,
          # Indicates whether call recording is enabled for this number.
          call_recording_enabled: nil,
          # Indicates whether caller ID is enabled for this number.
          caller_id_name_enabled: nil,
          # Indicates whether a CNAM listing is enabled for this number.
          cnam_listing_enabled: nil,
          # Identifies the connection associated with the phone number.
          connection_id: nil,
          # The user-assigned name of the connection to be associated with this phone
          # number.
          connection_name: nil,
          # ISO 8601 formatted date indicating when the time it took to activate after the
          # purchase.
          created_at: nil,
          # A customer reference string for customer look ups.
          customer_reference: nil,
          # Indicates whether deletion lock is enabled for this number. When enabled, this
          # prevents the phone number from being deleted via the API or Telnyx portal.
          deletion_lock_enabled: nil,
          # Identifies the emergency address associated with the phone number.
          emergency_address_id: nil,
          # Indicates whether emergency services are enabled for this number.
          emergency_enabled: nil,
          # If someone attempts to port your phone number away from Telnyx and your phone
          # number has an external PIN set, Telnyx will attempt to verify that you provided
          # the correct external PIN to the winning carrier. Note that not all carriers
          # cooperate with this security mechanism.
          external_pin: nil,
          # Identifies the messaging profile associated with the phone number.
          messaging_profile_id: nil,
          # The name of the messaging profile associated with the phone number.
          messaging_profile_name: nil,
          # The +E.164-formatted phone number associated with this record.
          phone_number: nil,
          # The phone number's type.
          phone_number_type: nil,
          # ISO 8601 formatted date indicating the time the request was made to purchase the
          # number.
          purchased_at: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # The phone number's current status.
          status: nil,
          # Indicates whether T38 Fax Gateway for inbound calls to this number.
          t38_fax_gateway_enabled: nil,
          # A list of user-assigned tags to help manage the phone number.
          tags: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_group_id: String,
              call_forwarding_enabled: T::Boolean,
              call_recording_enabled: T::Boolean,
              caller_id_name_enabled: T::Boolean,
              cnam_listing_enabled: T::Boolean,
              connection_id: String,
              connection_name: String,
              created_at: String,
              customer_reference: String,
              deletion_lock_enabled: T::Boolean,
              emergency_address_id: String,
              emergency_enabled: T::Boolean,
              external_pin: String,
              messaging_profile_id: String,
              messaging_profile_name: String,
              phone_number: String,
              phone_number_type:
                Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol,
              purchased_at: String,
              record_type: String,
              status:
                Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol,
              t38_fax_gateway_enabled: T::Boolean,
              tags: T::Array[String],
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # The phone number's type.
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )
          LANDLINE =
            T.let(
              :landline,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PhoneNumberDeleteResponse::Data::PhoneNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The phone number's current status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::PhoneNumberDeleteResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PURCHASE_PENDING =
            T.let(
              :"purchase-pending",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          PURCHASE_FAILED =
            T.let(
              :"purchase-failed",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          PORT_PENDING =
            T.let(
              :"port-pending",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          PORT_FAILED =
            T.let(
              :"port-failed",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          DELETED =
            T.let(
              :deleted,
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          EMERGENCY_ONLY =
            T.let(
              :"emergency-only",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          PORTED_OUT =
            T.let(
              :"ported-out",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )
          PORT_OUT_PENDING =
            T.let(
              :"port-out-pending",
              Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PhoneNumberDeleteResponse::Data::Status::TaggedSymbol
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
