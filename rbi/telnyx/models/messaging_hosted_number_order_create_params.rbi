# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessagingHostedNumberOrderCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Automatically associate the number with this messaging profile ID when the order
      # is complete.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # Phone numbers to be used for hosted messaging.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :phone_numbers

      sig { params(phone_numbers: T::Array[String]).void }
      attr_writer :phone_numbers

      sig do
        params(
          messaging_profile_id: String,
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Automatically associate the number with this messaging profile ID when the order
        # is complete.
        messaging_profile_id: nil,
        # Phone numbers to be used for hosted messaging.
        phone_numbers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            messaging_profile_id: String,
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
