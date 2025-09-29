# typed: strong

module Telnyx
  module Models
    class CampaignGetSharingStatusResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CampaignGetSharingStatusResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CampaignSharingStatus)) }
      attr_reader :shared_by_me

      sig { params(shared_by_me: Telnyx::CampaignSharingStatus::OrHash).void }
      attr_writer :shared_by_me

      sig { returns(T.nilable(Telnyx::CampaignSharingStatus)) }
      attr_reader :shared_with_me

      sig { params(shared_with_me: Telnyx::CampaignSharingStatus::OrHash).void }
      attr_writer :shared_with_me

      sig do
        params(
          shared_by_me: Telnyx::CampaignSharingStatus::OrHash,
          shared_with_me: Telnyx::CampaignSharingStatus::OrHash
        ).returns(T.attached_class)
      end
      def self.new(shared_by_me: nil, shared_with_me: nil)
      end

      sig do
        override.returns(
          {
            shared_by_me: Telnyx::CampaignSharingStatus,
            shared_with_me: Telnyx::CampaignSharingStatus
          }
        )
      end
      def to_hash
      end
    end
  end
end
