# typed: strong

module Telnyx
  module Models
    class VoiceDesignUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceDesignUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # New name for the voice design.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          id: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # New name for the voice design.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { id: String, name: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
