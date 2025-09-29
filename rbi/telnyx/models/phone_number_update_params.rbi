# typed: strong

module Telnyx
  module Models
    class PhoneNumberUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberUpdateParams, Telnyx::Internal::AnyHash)
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
      # number has an external PIN set, we will attempt to verify that you provided the
      # correct external PIN to the winning carrier. Note that not all carriers
      # cooperate with this security mechanism.
      sig { returns(T.nilable(String)) }
      attr_reader :external_pin

      sig { params(external_pin: String).void }
      attr_writer :external_pin

      # Indicates whether HD voice is enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hd_voice_enabled

      sig { params(hd_voice_enabled: T::Boolean).void }
      attr_writer :hd_voice_enabled

      # A list of user-assigned tags to help organize phone numbers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          billing_group_id: String,
          connection_id: String,
          customer_reference: String,
          external_pin: String,
          hd_voice_enabled: T::Boolean,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the billing group associated with the phone number.
        billing_group_id: nil,
        # Identifies the connection associated with the phone number.
        connection_id: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # If someone attempts to port your phone number away from Telnyx and your phone
        # number has an external PIN set, we will attempt to verify that you provided the
        # correct external PIN to the winning carrier. Note that not all carriers
        # cooperate with this security mechanism.
        external_pin: nil,
        # Indicates whether HD voice is enabled for this number.
        hd_voice_enabled: nil,
        # A list of user-assigned tags to help organize phone numbers.
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_group_id: String,
            connection_id: String,
            customer_reference: String,
            external_pin: String,
            hd_voice_enabled: T::Boolean,
            tags: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
