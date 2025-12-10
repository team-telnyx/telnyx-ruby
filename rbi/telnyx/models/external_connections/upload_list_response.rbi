# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class UploadListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::UploadListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(T::Array[Telnyx::ExternalConnections::Upload]))
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::ExternalConnections::Upload::OrHash]
          ).void
        end
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
            data: T::Array[Telnyx::ExternalConnections::Upload::OrHash],
            meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::ExternalConnections::Upload],
              meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
