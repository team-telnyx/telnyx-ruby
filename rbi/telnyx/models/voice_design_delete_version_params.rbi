# typed: strong

module Telnyx
  module Models
    class VoiceDesignDeleteVersionParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VoiceDesignDeleteVersionParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :version

      sig do
        params(
          id: String,
          version: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, version:, request_options: {})
      end

      sig do
        override.returns(
          {
            id: String,
            version: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
