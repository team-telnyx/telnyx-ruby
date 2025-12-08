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

      # Description of the event.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Indicates whether the campaign is registered with T-Mobile.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_t_mobile_registered

      sig { params(is_t_mobile_registered: T::Boolean).void }
      attr_writer :is_t_mobile_registered

      # The status of the campaign.
      sig do
        returns(
          T.nilable(
            Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::CampaignStatusUpdateWebhookEvent::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        returns(
          T.nilable(
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Telnyx::CampaignStatusUpdateWebhookEvent::Type::OrSymbol
        ).void
      end
      attr_writer :type

      sig do
        params(
          brand_id: String,
          campaign_id: String,
          create_date: String,
          csp_id: String,
          description: String,
          is_t_mobile_registered: T::Boolean,
          status: Telnyx::CampaignStatusUpdateWebhookEvent::Status::OrSymbol,
          type: Telnyx::CampaignStatusUpdateWebhookEvent::Type::OrSymbol
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
        # Description of the event.
        description: nil,
        # Indicates whether the campaign is registered with T-Mobile.
        is_t_mobile_registered: nil,
        # The status of the campaign.
        status: nil,
        type: nil
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            campaign_id: String,
            create_date: String,
            csp_id: String,
            description: String,
            is_t_mobile_registered: T::Boolean,
            status:
              Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol,
            type: Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The status of the campaign.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CampaignStatusUpdateWebhookEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPTED =
          T.let(
            :ACCEPTED,
            Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :REJECTED,
            Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
          )
        DORMANT =
          T.let(
            :DORMANT,
            Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
          )
        SUCCESS =
          T.let(
            :success,
            Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CampaignStatusUpdateWebhookEvent::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CampaignStatusUpdateWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX_EVENT =
          T.let(
            :TELNYX_EVENT,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        REGISTRATION =
          T.let(
            :REGISTRATION,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        MNO_REVIEW =
          T.let(
            :MNO_REVIEW,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        TELNYX_REVIEW =
          T.let(
            :TELNYX_REVIEW,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        NUMBER_POOL_PROVISIONED =
          T.let(
            :NUMBER_POOL_PROVISIONED,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        NUMBER_POOL_DEPROVISIONED =
          T.let(
            :NUMBER_POOL_DEPROVISIONED,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        TCR_EVENT =
          T.let(
            :TCR_EVENT,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :VERIFIED,
            Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CampaignStatusUpdateWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
