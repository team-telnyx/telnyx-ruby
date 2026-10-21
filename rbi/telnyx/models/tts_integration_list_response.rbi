# typed: strong

module Telnyx
  module Models
    class TtsIntegrationListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TtsIntegrationListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::CommunityTtsEngine]) }
      attr_accessor :data

      sig { returns(Telnyx::CommunityTtsEngineListMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::CommunityTtsEngineListMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::CommunityTtsEngine::OrHash],
          meta: Telnyx::CommunityTtsEngineListMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::CommunityTtsEngine],
            meta: Telnyx::CommunityTtsEngineListMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
