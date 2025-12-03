# typed: strong

module Telnyx
  module Models
    module CampaignStatusUpdateWebhookEvent
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::CampaignStatusUpdateWebhookEvent::CampaignStatusUpdateEvent,
            Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent
          )
        end

      class CampaignStatusUpdateEvent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignStatusUpdateEvent,
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

      class CampaignSuspendedEvent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent,
              Telnyx::Internal::AnyHash
            )
          end

        # The ID of the campaign.
        sig { returns(T.nilable(String)) }
        attr_reader :campaign_id

        sig { params(campaign_id: String).void }
        attr_writer :campaign_id

        # Description of the event.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The status of the campaign.
        sig do
          returns(
            T.nilable(
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            campaign_id: String,
            description: String,
            status:
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status::OrSymbol,
            type:
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the campaign.
          campaign_id: nil,
          # Description of the event.
          description: nil,
          # The status of the campaign.
          status: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              campaign_id: String,
              description: String,
              status:
                Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol,
              type:
                Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DORMANT =
            T.let(
              :DORMANT,
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX_EVENT =
            T.let(
              :TELNYX_EVENT,
              Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CampaignStatusUpdateWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Telnyx::CampaignStatusUpdateWebhookEvent::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
