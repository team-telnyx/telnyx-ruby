# typed: strong

module Telnyx
  module Models
    class PhoneNumberCampaignCreate < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberCampaignCreate, Telnyx::Internal::AnyHash)
        end

      # The ID of the campaign you want to link to the specified phone number.
      sig { returns(String) }
      attr_accessor :campaign_id

      # The phone number you want to link to a specified campaign.
      sig { returns(String) }
      attr_accessor :phone_number

      sig do
        params(campaign_id: String, phone_number: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The ID of the campaign you want to link to the specified phone number.
        campaign_id:,
        # The phone number you want to link to a specified campaign.
        phone_number:
      )
      end

      sig { override.returns({ campaign_id: String, phone_number: String }) }
      def to_hash
      end
    end
  end
end
