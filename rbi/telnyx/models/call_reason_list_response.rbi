# typed: strong

module Telnyx
  module Models
    class CallReasonListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CallReasonListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Pre-vetted call-reason library entry.
      sig do
        params(id: String, description: String, reason: String).returns(
          T.attached_class
        )
      end
      def self.new(id: nil, description: nil, reason: nil)
      end

      sig do
        override.returns({ id: String, description: String, reason: String })
      end
      def to_hash
      end
    end
  end
end
