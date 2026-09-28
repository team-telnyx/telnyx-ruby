# typed: strong

module Telnyx
  module Models
    class SpendLimitDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SpendLimitDeleteParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :product

      # Limit period. Defaults to `daily`; send it explicitly.
      sig { returns(T.nilable(Telnyx::SpendLimitPeriod::OrSymbol)) }
      attr_reader :period

      sig { params(period: Telnyx::SpendLimitPeriod::OrSymbol).void }
      attr_writer :period

      # Why the limit is removed, kept for audit. At most 500 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig do
        params(
          product: String,
          period: Telnyx::SpendLimitPeriod::OrSymbol,
          reason: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        product:,
        # Limit period. Defaults to `daily`; send it explicitly.
        period: nil,
        # Why the limit is removed, kept for audit. At most 500 characters.
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product: String,
            period: Telnyx::SpendLimitPeriod::OrSymbol,
            reason: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
