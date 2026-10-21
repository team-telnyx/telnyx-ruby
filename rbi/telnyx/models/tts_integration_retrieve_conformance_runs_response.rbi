# typed: strong

module Telnyx
  module Models
    class TtsIntegrationRetrieveConformanceRunsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TtsIntegrationRetrieveConformanceRunsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[Telnyx::TtsIntegrations::CommunityTtsConformanceRun])
      end
      attr_accessor :data

      sig { returns(Telnyx::CommunityTtsEngineListMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::CommunityTtsEngineListMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::OrHash
            ],
          meta: Telnyx::CommunityTtsEngineListMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::TtsIntegrations::CommunityTtsConformanceRun],
            meta: Telnyx::CommunityTtsEngineListMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
