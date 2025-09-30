# typed: strong

module Telnyx
  module Models
    class WellKnownRetrieveProtectedResourceMetadataResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # List of authorization server URLs
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :authorization_servers

      sig { params(authorization_servers: T::Array[String]).void }
      attr_writer :authorization_servers

      # Protected resource URL
      sig { returns(T.nilable(String)) }
      attr_reader :resource

      sig { params(resource: String).void }
      attr_writer :resource

      sig do
        params(
          authorization_servers: T::Array[String],
          resource: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of authorization server URLs
        authorization_servers: nil,
        # Protected resource URL
        resource: nil
      )
      end

      sig do
        override.returns(
          { authorization_servers: T::Array[String], resource: String }
        )
      end
      def to_hash
      end
    end
  end
end
