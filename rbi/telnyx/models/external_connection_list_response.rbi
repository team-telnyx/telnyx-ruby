# typed: strong

module Telnyx
  module Models
    class ExternalConnectionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ExternalConnectionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::ExternalConnection])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::ExternalConnection::OrHash]).void }
      attr_writer :data

      sig do
        returns(T.nilable(Telnyx::ExternalVoiceIntegrationsPaginationMeta))
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::ExternalConnection::OrHash],
          meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::ExternalConnection],
            meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
