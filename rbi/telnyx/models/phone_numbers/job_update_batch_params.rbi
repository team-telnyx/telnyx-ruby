# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class JobUpdateBatchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::JobUpdateBatchParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Array of phone number ids and/or phone numbers in E164 format to update. This
        # parameter is required if no filter parameters are provided. If you want to
        # update specific numbers rather than all numbers matching a filter, you must use
        # this parameter. Each item must be either a valid phone number ID or a phone
        # number in E164 format (e.g., '+13127367254').
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
        # filter[status], filter[voice.connection_name],
        # filter[voice.usage_payment_method], filter[billing_group_id],
        # filter[emergency_address_id], filter[customer_reference]
        sig do
          returns(T.nilable(Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter))
        end
        attr_reader :filter

        sig do
          params(
            filter: Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

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

        # Indicates whether to enable or disable the deletion lock on each phone number.
        # When enabled, this prevents the phone number from being deleted via the API or
        # Telnyx portal.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deletion_lock_enabled

        sig { params(deletion_lock_enabled: T::Boolean).void }
        attr_writer :deletion_lock_enabled

        # If someone attempts to port your phone number away from Telnyx and your phone
        # number has an external PIN set, we will attempt to verify that you provided the
        # correct external PIN to the winning carrier. Note that not all carriers
        # cooperate with this security mechanism.
        sig { returns(T.nilable(String)) }
        attr_reader :external_pin

        sig { params(external_pin: String).void }
        attr_writer :external_pin

        # Indicates whether to enable or disable HD Voice on each phone number. HD Voice
        # is a paid feature and may not be available for all phone numbers, more details
        # about it can be found in the Telnyx support documentation.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hd_voice_enabled

        sig { params(hd_voice_enabled: T::Boolean).void }
        attr_writer :hd_voice_enabled

        # A list of user-assigned tags to help organize phone numbers.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig { returns(T.nilable(Telnyx::PhoneNumbers::UpdateVoiceSettings)) }
        attr_reader :voice

        sig do
          params(voice: Telnyx::PhoneNumbers::UpdateVoiceSettings::OrHash).void
        end
        attr_writer :voice

        sig do
          params(
            phone_numbers: T::Array[String],
            filter: Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::OrHash,
            billing_group_id: String,
            connection_id: String,
            customer_reference: String,
            deletion_lock_enabled: T::Boolean,
            external_pin: String,
            hd_voice_enabled: T::Boolean,
            tags: T::Array[String],
            voice: Telnyx::PhoneNumbers::UpdateVoiceSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of phone number ids and/or phone numbers in E164 format to update. This
          # parameter is required if no filter parameters are provided. If you want to
          # update specific numbers rather than all numbers matching a filter, you must use
          # this parameter. Each item must be either a valid phone number ID or a phone
          # number in E164 format (e.g., '+13127367254').
          phone_numbers:,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          # filter[status], filter[voice.connection_name],
          # filter[voice.usage_payment_method], filter[billing_group_id],
          # filter[emergency_address_id], filter[customer_reference]
          filter: nil,
          # Identifies the billing group associated with the phone number.
          billing_group_id: nil,
          # Identifies the connection associated with the phone number.
          connection_id: nil,
          # A customer reference string for customer look ups.
          customer_reference: nil,
          # Indicates whether to enable or disable the deletion lock on each phone number.
          # When enabled, this prevents the phone number from being deleted via the API or
          # Telnyx portal.
          deletion_lock_enabled: nil,
          # If someone attempts to port your phone number away from Telnyx and your phone
          # number has an external PIN set, we will attempt to verify that you provided the
          # correct external PIN to the winning carrier. Note that not all carriers
          # cooperate with this security mechanism.
          external_pin: nil,
          # Indicates whether to enable or disable HD Voice on each phone number. HD Voice
          # is a paid feature and may not be available for all phone numbers, more details
          # about it can be found in the Telnyx support documentation.
          hd_voice_enabled: nil,
          # A list of user-assigned tags to help organize phone numbers.
          tags: nil,
          voice: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              phone_numbers: T::Array[String],
              filter: Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter,
              billing_group_id: String,
              connection_id: String,
              customer_reference: String,
              deletion_lock_enabled: T::Boolean,
              external_pin: String,
              hd_voice_enabled: T::Boolean,
              tags: T::Array[String],
              voice: Telnyx::PhoneNumbers::UpdateVoiceSettings,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the billing_group_id associated with phone numbers. To filter to only
          # phone numbers that have no billing group associated them, set the value of this
          # filter to the string 'null'.
          sig { returns(T.nilable(String)) }
          attr_reader :billing_group_id

          sig { params(billing_group_id: String).void }
          attr_writer :billing_group_id

          # Filter by connection_id.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Filter numbers via the customer_reference set.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # Filter by the emergency_address_id associated with phone numbers. To filter only
          # phone numbers that have no emergency address associated with them, set the value
          # of this filter to the string 'null'.
          sig { returns(T.nilable(String)) }
          attr_reader :emergency_address_id

          sig { params(emergency_address_id: String).void }
          attr_writer :emergency_address_id

          # Filter by phone number that have bundles.
          sig { returns(T.nilable(String)) }
          attr_reader :has_bundle

          sig { params(has_bundle: String).void }
          attr_writer :has_bundle

          # Filter by phone number. Requires at least three digits. Non-numerical characters
          # will result in no values being returned.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Filter by phone number status.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Filter by phone number tags.
          sig { returns(T.nilable(String)) }
          attr_reader :tag

          sig { params(tag: String).void }
          attr_writer :tag

          # Filter by voice connection name pattern matching.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName
              )
            )
          end
          attr_reader :voice_connection_name

          sig do
            params(
              voice_connection_name:
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName::OrHash
            ).void
          end
          attr_writer :voice_connection_name

          # Filter by usage_payment_method.
          sig do
            returns(
              T.nilable(
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::OrSymbol
              )
            )
          end
          attr_reader :voice_usage_payment_method

          sig do
            params(
              voice_usage_payment_method:
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            ).void
          end
          attr_writer :voice_usage_payment_method

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          # filter[status], filter[voice.connection_name],
          # filter[voice.usage_payment_method], filter[billing_group_id],
          # filter[emergency_address_id], filter[customer_reference]
          sig do
            params(
              billing_group_id: String,
              connection_id: String,
              customer_reference: String,
              emergency_address_id: String,
              has_bundle: String,
              phone_number: String,
              status:
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::OrSymbol,
              tag: String,
              voice_connection_name:
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName::OrHash,
              voice_usage_payment_method:
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by the billing_group_id associated with phone numbers. To filter to only
            # phone numbers that have no billing group associated them, set the value of this
            # filter to the string 'null'.
            billing_group_id: nil,
            # Filter by connection_id.
            connection_id: nil,
            # Filter numbers via the customer_reference set.
            customer_reference: nil,
            # Filter by the emergency_address_id associated with phone numbers. To filter only
            # phone numbers that have no emergency address associated with them, set the value
            # of this filter to the string 'null'.
            emergency_address_id: nil,
            # Filter by phone number that have bundles.
            has_bundle: nil,
            # Filter by phone number. Requires at least three digits. Non-numerical characters
            # will result in no values being returned.
            phone_number: nil,
            # Filter by phone number status.
            status: nil,
            # Filter by phone number tags.
            tag: nil,
            # Filter by voice connection name pattern matching.
            voice_connection_name: nil,
            # Filter by usage_payment_method.
            voice_usage_payment_method: nil
          )
          end

          sig do
            override.returns(
              {
                billing_group_id: String,
                connection_id: String,
                customer_reference: String,
                emergency_address_id: String,
                has_bundle: String,
                phone_number: String,
                status:
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::OrSymbol,
                tag: String,
                voice_connection_name:
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName,
                voice_usage_payment_method:
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter by phone number status.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PURCHASE_PENDING =
              T.let(
                :"purchase-pending",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            PURCHASE_FAILED =
              T.let(
                :"purchase-failed",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            PORT_PENDING =
              T.let(
                :"port-pending",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            DELETED =
              T.let(
                :deleted,
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            PORT_FAILED =
              T.let(
                :"port-failed",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            EMERGENCY_ONLY =
              T.let(
                :"emergency-only",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            PORTED_OUT =
              T.let(
                :"ported-out",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )
            PORT_OUT_PENDING =
              T.let(
                :"port-out-pending",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class VoiceConnectionName < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceConnectionName,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter contains connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Filter ends with connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :ends_with

            sig { params(ends_with: String).void }
            attr_writer :ends_with

            # Filter by connection name.
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            # Filter starts with connection name. Requires at least three characters.
            sig { returns(T.nilable(String)) }
            attr_reader :starts_with

            sig { params(starts_with: String).void }
            attr_writer :starts_with

            # Filter by voice connection name pattern matching.
            sig do
              params(
                contains: String,
                ends_with: String,
                eq: String,
                starts_with: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Filter contains connection name. Requires at least three characters.
              contains: nil,
              # Filter ends with connection name. Requires at least three characters.
              ends_with: nil,
              # Filter by connection name.
              eq: nil,
              # Filter starts with connection name. Requires at least three characters.
              starts_with: nil
            )
            end

            sig do
              override.returns(
                {
                  contains: String,
                  ends_with: String,
                  eq: String,
                  starts_with: String
                }
              )
            end
            def to_hash
            end
          end

          # Filter by usage_payment_method.
          module VoiceUsagePaymentMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAY_PER_MINUTE =
              T.let(
                :"pay-per-minute",
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              )
            CHANNEL =
              T.let(
                :channel,
                Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PhoneNumbers::JobUpdateBatchParams::Filter::VoiceUsagePaymentMethod::TaggedSymbol
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
end
