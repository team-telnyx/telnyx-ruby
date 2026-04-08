# typed: strong

module Telnyx
  module Models
    class TexmlInitiateAICallResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TexmlInitiateAICallResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :call_sid

      sig { params(call_sid: String).void }
      attr_writer :call_sid

      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :to

      sig { params(to: String).void }
      attr_writer :to

      sig do
        params(
          call_sid: String,
          from: String,
          status: String,
          to: String
        ).returns(T.attached_class)
      end
      def self.new(call_sid: nil, from: nil, status: nil, to: nil)
      end

      sig do
        override.returns(
          { call_sid: String, from: String, status: String, to: String }
        )
      end
      def to_hash
      end
    end
  end
end
