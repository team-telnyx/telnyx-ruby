# typed: strong

module Telnyx
  module Models
    module UnwrapWebhookEvent
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::CallAIGatherEndedWebhookEvent,
            Telnyx::CallAIGatherMessageHistoryUpdatedWebhookEvent,
            Telnyx::CallAIGatherPartialResultsWebhookEvent,
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent,
            Telnyx::CallAnsweredWebhookEvent,
            Telnyx::CallBridgedWebhookEvent,
            Telnyx::CallConversationEndedWebhookEvent,
            Telnyx::CallConversationInsightsGeneratedWebhookEvent,
            Telnyx::CallDtmfReceivedWebhookEvent,
            Telnyx::CallEnqueuedWebhookEvent,
            Telnyx::CallForkStartedWebhookEvent,
            Telnyx::CallForkStoppedWebhookEvent,
            Telnyx::CallGatherEndedWebhookEvent,
            Telnyx::CallHangupWebhookEvent,
            Telnyx::CallInitiatedWebhookEvent,
            Telnyx::CallLeftQueueWebhookEvent,
            Telnyx::CallMachineDetectionEndedWebhookEvent,
            Telnyx::CallMachineGreetingEndedWebhookEvent,
            Telnyx::CallMachinePremiumDetectionEndedWebhookEvent,
            Telnyx::CallMachinePremiumGreetingEndedWebhookEvent,
            Telnyx::CallPlaybackEndedWebhookEvent,
            Telnyx::CallPlaybackStartedWebhookEvent,
            Telnyx::CallRecordingErrorWebhookEvent,
            Telnyx::CallRecordingSavedWebhookEvent,
            Telnyx::CallRecordingTranscriptionSavedWebhookEvent,
            Telnyx::CallReferCompletedWebhookEvent,
            Telnyx::CallReferFailedWebhookEvent,
            Telnyx::CallReferStartedWebhookEvent,
            Telnyx::CallSiprecFailedWebhookEvent,
            Telnyx::CallSiprecStartedWebhookEvent,
            Telnyx::CallSiprecStoppedWebhookEvent,
            Telnyx::CallSpeakEndedWebhookEvent,
            Telnyx::CallSpeakStartedWebhookEvent,
            Telnyx::CallStreamingFailedWebhookEvent,
            Telnyx::CallStreamingStartedWebhookEvent,
            Telnyx::CallStreamingStoppedWebhookEvent,
            Telnyx::UnwrapWebhookEvent::CampaignStatusUpdateEvent,
            Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent,
            Telnyx::ConferenceCreatedWebhookEvent,
            Telnyx::ConferenceEndedWebhookEvent,
            Telnyx::ConferenceFloorChangedWebhookEvent,
            Telnyx::ConferenceParticipantJoinedWebhookEvent,
            Telnyx::ConferenceParticipantLeftWebhookEvent,
            Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent,
            Telnyx::ConferenceParticipantPlaybackStartedWebhookEvent,
            Telnyx::ConferenceParticipantSpeakEndedWebhookEvent,
            Telnyx::ConferenceParticipantSpeakStartedWebhookEvent,
            Telnyx::ConferencePlaybackEndedWebhookEvent,
            Telnyx::ConferencePlaybackStartedWebhookEvent,
            Telnyx::ConferenceRecordingSavedWebhookEvent,
            Telnyx::ConferenceSpeakEndedWebhookEvent,
            Telnyx::ConferenceSpeakStartedWebhookEvent,
            Telnyx::DeliveryUpdateWebhookEvent,
            Telnyx::FaxDeliveredWebhookEvent,
            Telnyx::FaxFailedWebhookEvent,
            Telnyx::FaxMediaProcessedWebhookEvent,
            Telnyx::FaxQueuedWebhookEvent,
            Telnyx::FaxSendingStartedWebhookEvent,
            Telnyx::InboundMessageWebhookEvent,
            Telnyx::NumberOrderStatusUpdateWebhookEvent,
            Telnyx::ReplacedLinkClickWebhookEvent,
            Telnyx::StreamingFailedWebhookEvent,
            Telnyx::StreamingStartedWebhookEvent,
            Telnyx::StreamingStoppedWebhookEvent,
            Telnyx::TranscriptionWebhookEvent
          )
        end

      class CampaignStatusUpdateEvent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::UnwrapWebhookEvent::CampaignStatusUpdateEvent,
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
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent,
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
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            campaign_id: String,
            description: String,
            status:
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status::OrSymbol,
            type:
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type::OrSymbol
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
                Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol,
              type:
                Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
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
                Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DORMANT =
            T.let(
              :DORMANT,
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Status::TaggedSymbol
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
                Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX_EVENT =
            T.let(
              :TELNYX_EVENT,
              Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::UnwrapWebhookEvent::CampaignSuspendedEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig { override.returns(T::Array[Telnyx::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
