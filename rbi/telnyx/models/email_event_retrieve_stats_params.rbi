# typed: strong

module Telnyx
  module Models
    class EmailEventRetrieveStatsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::EmailEventRetrieveStatsParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      sig { returns(T.nilable(Time)) }
      attr_reader :from

      sig { params(from: Time).void }
      attr_writer :from

      # Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      # to `from + 30 days`.
      sig { returns(T.nilable(Time)) }
      attr_reader :to

      sig { params(to: Time).void }
      attr_writer :to

      sig do
        params(
          from: Time,
          to: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
        from: nil,
        # Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
        # to `from + 30 days`.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { from: Time, to: Time, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
