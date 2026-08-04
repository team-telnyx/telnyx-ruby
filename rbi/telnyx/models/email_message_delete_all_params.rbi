# typed: strong

module Telnyx
  module Models
    class EmailMessageDeleteAllParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailMessageDeleteAllParams, Telnyx::Internal::AnyHash)
        end

      # Sender or recipient address to delete. Matching is trimmed and case-insensitive.
      sig { returns(String) }
      attr_accessor :address

      sig do
        params(
          address: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Sender or recipient address to delete. Matching is trimmed and case-insensitive.
        address:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { address: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
