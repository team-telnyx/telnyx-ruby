# typed: strong

module Telnyx
  module Models
    class SuccessResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SuccessResponse, Telnyx::Internal::AnyHash)
        end

      # Human-readable status message.
      sig { returns(String) }
      attr_accessor :message

      # Whether the request was accepted.
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Status envelope used by the signup and magic-link flows.
      sig do
        params(message: String, success: T::Boolean).returns(T.attached_class)
      end
      def self.new(
        # Human-readable status message.
        message:,
        # Whether the request was accepted.
        success:
      )
      end

      sig { override.returns({ message: String, success: T::Boolean }) }
      def to_hash
      end
    end
  end
end
