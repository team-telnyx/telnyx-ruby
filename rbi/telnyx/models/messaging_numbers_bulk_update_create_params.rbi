# typed: strong

module Telnyx
  module Models
    class MessagingNumbersBulkUpdateCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessagingNumbersBulkUpdateCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Configure the messaging profile these phone numbers are assigned to:
      #
      # - Set this field to `""` to unassign each number from their respective messaging
      #   profile
      # - Set this field to a quoted UUID of a messaging profile to assign these numbers
      #   to that messaging profile
      sig { returns(String) }
      attr_accessor :messaging_profile_id

      # The list of phone numbers to update.
      sig { returns(T::Array[String]) }
      attr_accessor :numbers

      sig do
        params(
          messaging_profile_id: String,
          numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Configure the messaging profile these phone numbers are assigned to:
        #
        # - Set this field to `""` to unassign each number from their respective messaging
        #   profile
        # - Set this field to a quoted UUID of a messaging profile to assign these numbers
        #   to that messaging profile
        messaging_profile_id:,
        # The list of phone numbers to update.
        numbers:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            messaging_profile_id: String,
            numbers: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
