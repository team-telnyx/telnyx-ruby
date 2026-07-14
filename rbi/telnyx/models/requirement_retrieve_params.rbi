# typed: strong

module Telnyx
  module Models
    class RequirementRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementRetrieveParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Filter by requirement version number. When omitted, returns the currently-active
      # version.
      sig { returns(T.nilable(Integer)) }
      attr_reader :version

      sig { params(version: Integer).void }
      attr_writer :version

      sig do
        params(
          id: String,
          version: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Filter by requirement version number. When omitted, returns the currently-active
        # version.
        version: nil,
        request_options: {}
      )
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
