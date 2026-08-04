# typed: strong

module Telnyx
  module Models
    class EmailValidationCheck < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailValidationCheck, Telnyx::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :pass

      # Human-readable check detail. Omitted when nil.
      sig { returns(T.nilable(String)) }
      attr_reader :details

      sig { params(details: String).void }
      attr_writer :details

      sig do
        params(pass: T::Boolean, details: String).returns(T.attached_class)
      end
      def self.new(
        pass:,
        # Human-readable check detail. Omitted when nil.
        details: nil
      )
      end

      sig { override.returns({ pass: T::Boolean, details: String }) }
      def to_hash
      end
    end
  end
end
