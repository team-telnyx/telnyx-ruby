# typed: strong

module Telnyx
  module Models
    class AlphanumericSenderIDCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AlphanumericSenderIDCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The alphanumeric sender ID string.
      sig { returns(String) }
      attr_accessor :alphanumeric_sender_id

      # The messaging profile to associate the sender ID with.
      sig { returns(String) }
      attr_accessor :messaging_profile_id

      # A US long code number to use as fallback when sending to US destinations.
      sig { returns(T.nilable(String)) }
      attr_reader :us_long_code_fallback

      sig { params(us_long_code_fallback: String).void }
      attr_writer :us_long_code_fallback

      sig do
        params(
          alphanumeric_sender_id: String,
          messaging_profile_id: String,
          us_long_code_fallback: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The alphanumeric sender ID string.
        alphanumeric_sender_id:,
        # The messaging profile to associate the sender ID with.
        messaging_profile_id:,
        # A US long code number to use as fallback when sending to US destinations.
        us_long_code_fallback: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            alphanumeric_sender_id: String,
            messaging_profile_id: String,
            us_long_code_fallback: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
