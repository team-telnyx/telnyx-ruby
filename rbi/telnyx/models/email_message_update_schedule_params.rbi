# typed: strong

module Telnyx
  module Models
    class EmailMessageUpdateScheduleParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::EmailMessageUpdateScheduleParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email_id

      # New ISO 8601 delivery time. Must be strictly in the future.
      sig { returns(Time) }
      attr_accessor :scheduled_at

      sig do
        params(
          email_id: String,
          scheduled_at: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        email_id:,
        # New ISO 8601 delivery time. Must be strictly in the future.
        scheduled_at:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email_id: String,
            scheduled_at: Time,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
