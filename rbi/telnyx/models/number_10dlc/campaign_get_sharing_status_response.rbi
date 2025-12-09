# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class CampaignGetSharingStatusResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Number10dlc::CampaignGetSharingStatusResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Number10dlc::CampaignSharingStatus)) }
        attr_reader :shared_by_me

        sig do
          params(
            shared_by_me: Telnyx::Number10dlc::CampaignSharingStatus::OrHash
          ).void
        end
        attr_writer :shared_by_me

        sig { returns(T.nilable(Telnyx::Number10dlc::CampaignSharingStatus)) }
        attr_reader :shared_with_me

        sig do
          params(
            shared_with_me: Telnyx::Number10dlc::CampaignSharingStatus::OrHash
          ).void
        end
        attr_writer :shared_with_me

        sig do
          params(
            shared_by_me: Telnyx::Number10dlc::CampaignSharingStatus::OrHash,
            shared_with_me: Telnyx::Number10dlc::CampaignSharingStatus::OrHash
          ).returns(T.attached_class)
        end
        def self.new(shared_by_me: nil, shared_with_me: nil)
        end

        sig do
          override.returns(
            {
              shared_by_me: Telnyx::Number10dlc::CampaignSharingStatus,
              shared_with_me: Telnyx::Number10dlc::CampaignSharingStatus
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
