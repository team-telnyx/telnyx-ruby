# typed: strong

module Telnyx
  module Models
    class CampaignStatusUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CampaignStatusUpdateWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Brand ID associated with the campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      # The ID of the campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :campaign_id

      sig { params(campaign_id: String).void }
      attr_writer :campaign_id

      # Unix timestamp when campaign was created.
      sig { returns(T.nilable(String)) }
      attr_reader :create_date

      sig { params(create_date: String).void }
      attr_writer :create_date

      # Alphanumeric identifier of the CSP associated with this campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :csp_id

      sig { params(csp_id: String).void }
      attr_writer :csp_id

      # Indicates whether the campaign is registered with T-Mobile.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_t_mobile_registered

      sig { params(is_t_mobile_registered: T::Boolean).void }
      attr_writer :is_t_mobile_registered

      sig do
        params(
          brand_id: String,
          campaign_id: String,
          create_date: String,
          csp_id: String,
          is_t_mobile_registered: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Brand ID associated with the campaign.
        brand_id: nil,
        # The ID of the campaign.
        campaign_id: nil,
        # Unix timestamp when campaign was created.
        create_date: nil,
        # Alphanumeric identifier of the CSP associated with this campaign.
        csp_id: nil,
        # Indicates whether the campaign is registered with T-Mobile.
        is_t_mobile_registered: nil
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            campaign_id: String,
            create_date: String,
            csp_id: String,
            is_t_mobile_registered: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
