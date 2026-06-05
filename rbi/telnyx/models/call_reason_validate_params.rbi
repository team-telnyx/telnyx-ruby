# typed: strong

module Telnyx
  module Models
    class CallReasonValidateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CallReasonValidateParams, Telnyx::Internal::AnyHash)
        end

      # **Bare JSON array** of candidate call-reason strings (NOT an object — there is
      # no top-level `call_reasons` key on this endpoint). 1–10 strings, each ≤64
      # characters.
      sig { returns(T::Array[String]) }
      attr_accessor :body

      sig do
        params(
          body: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # **Bare JSON array** of candidate call-reason strings (NOT an object — there is
        # no top-level `call_reasons` key on this endpoint). 1–10 strings, each ≤64
        # characters.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { body: T::Array[String], request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
