# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class CampaignGetSharingStatusResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging10dlc::CampaignGetSharingStatusResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Messaging10dlc::CampaignSharingStatus))
        end
        attr_reader :shared_by_me

        sig do
          params(
            shared_by_me: Telnyx::Messaging10dlc::CampaignSharingStatus::OrHash
          ).void
        end
        attr_writer :shared_by_me

        sig do
          returns(T.nilable(Telnyx::Messaging10dlc::CampaignSharingStatus))
        end
        attr_reader :shared_with_me

        sig do
          params(
            shared_with_me:
              Telnyx::Messaging10dlc::CampaignSharingStatus::OrHash
          ).void
        end
        attr_writer :shared_with_me

        sig do
          params(
            shared_by_me: Telnyx::Messaging10dlc::CampaignSharingStatus::OrHash,
            shared_with_me:
              Telnyx::Messaging10dlc::CampaignSharingStatus::OrHash
          ).returns(T.attached_class)
        end
        def self.new(shared_by_me: nil, shared_with_me: nil)
        end

        sig do
          override.returns(
            {
              shared_by_me: Telnyx::Messaging10dlc::CampaignSharingStatus,
              shared_with_me: Telnyx::Messaging10dlc::CampaignSharingStatus
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
