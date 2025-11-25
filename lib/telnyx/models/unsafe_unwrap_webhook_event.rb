# frozen_string_literal: true

module Telnyx
  module Models
    module UnsafeUnwrapWebhookEvent
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::CallAIGatherEndedWebhookEvent }

      variant -> { Telnyx::CallAIGatherMessageHistoryUpdatedWebhookEvent }

      variant -> { Telnyx::CallAIGatherPartialResultsWebhookEvent }

      variant -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent }

      variant -> { Telnyx::CallAnsweredWebhookEvent }

      variant -> { Telnyx::CallBridgedWebhookEvent }

      variant -> { Telnyx::CallConversationEndedWebhookEvent }

      variant -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent }

      variant -> { Telnyx::CallDtmfReceivedWebhookEvent }

      variant -> { Telnyx::CallEnqueuedWebhookEvent }

      variant -> { Telnyx::CallForkStartedWebhookEvent }

      variant -> { Telnyx::CallForkStoppedWebhookEvent }

      variant -> { Telnyx::CallGatherEndedWebhookEvent }

      variant -> { Telnyx::CallHangupWebhookEvent }

      variant -> { Telnyx::CallInitiatedWebhookEvent }

      variant -> { Telnyx::CallLeftQueueWebhookEvent }

      variant -> { Telnyx::CallMachineDetectionEndedWebhookEvent }

      variant -> { Telnyx::CallMachineGreetingEndedWebhookEvent }

      variant -> { Telnyx::CallMachinePremiumDetectionEndedWebhookEvent }

      variant -> { Telnyx::CallMachinePremiumGreetingEndedWebhookEvent }

      variant -> { Telnyx::CallPlaybackEndedWebhookEvent }

      variant -> { Telnyx::CallPlaybackStartedWebhookEvent }

      variant -> { Telnyx::CallRecordingErrorWebhookEvent }

      variant -> { Telnyx::CallRecordingSavedWebhookEvent }

      variant -> { Telnyx::CallRecordingTranscriptionSavedWebhookEvent }

      variant -> { Telnyx::CallReferCompletedWebhookEvent }

      variant -> { Telnyx::CallReferFailedWebhookEvent }

      variant -> { Telnyx::CallReferStartedWebhookEvent }

      variant -> { Telnyx::CallSiprecFailedWebhookEvent }

      variant -> { Telnyx::CallSiprecStartedWebhookEvent }

      variant -> { Telnyx::CallSiprecStoppedWebhookEvent }

      variant -> { Telnyx::CallSpeakEndedWebhookEvent }

      variant -> { Telnyx::CallSpeakStartedWebhookEvent }

      variant -> { Telnyx::CallStreamingFailedWebhookEvent }

      variant -> { Telnyx::CallStreamingStartedWebhookEvent }

      variant -> { Telnyx::CallStreamingStoppedWebhookEvent }

      variant -> { Telnyx::UnsafeUnwrapWebhookEvent::CampaignStatusUpdateEvent }

      variant -> { Telnyx::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent }

      variant -> { Telnyx::ConferenceCreatedWebhookEvent }

      variant -> { Telnyx::ConferenceEndedWebhookEvent }

      variant -> { Telnyx::ConferenceFloorChangedWebhookEvent }

      variant -> { Telnyx::ConferenceParticipantJoinedWebhookEvent }

      variant -> { Telnyx::ConferenceParticipantLeftWebhookEvent }

      variant -> { Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent }

      variant -> { Telnyx::ConferenceParticipantPlaybackStartedWebhookEvent }

      variant -> { Telnyx::ConferenceParticipantSpeakEndedWebhookEvent }

      variant -> { Telnyx::ConferenceParticipantSpeakStartedWebhookEvent }

      variant -> { Telnyx::ConferencePlaybackEndedWebhookEvent }

      variant -> { Telnyx::ConferencePlaybackStartedWebhookEvent }

      variant -> { Telnyx::ConferenceRecordingSavedWebhookEvent }

      variant -> { Telnyx::ConferenceSpeakEndedWebhookEvent }

      variant -> { Telnyx::ConferenceSpeakStartedWebhookEvent }

      variant -> { Telnyx::DeliveryUpdateWebhookEvent }

      variant -> { Telnyx::FaxDeliveredWebhookEvent }

      variant -> { Telnyx::FaxFailedWebhookEvent }

      variant -> { Telnyx::FaxMediaProcessedWebhookEvent }

      variant -> { Telnyx::FaxQueuedWebhookEvent }

      variant -> { Telnyx::FaxSendingStartedWebhookEvent }

      variant -> { Telnyx::InboundMessageWebhookEvent }

      variant -> { Telnyx::NumberOrderStatusUpdateWebhookEvent }

      variant -> { Telnyx::ReplacedLinkClickWebhookEvent }

      variant -> { Telnyx::StreamingFailedWebhookEvent }

      variant -> { Telnyx::StreamingStartedWebhookEvent }

      variant -> { Telnyx::StreamingStoppedWebhookEvent }

      variant -> { Telnyx::TranscriptionWebhookEvent }

      class CampaignStatusUpdateEvent < Telnyx::Internal::Type::BaseModel
        # @!attribute brand_id
        #   Brand ID associated with the campaign.
        #
        #   @return [String, nil]
        optional :brand_id, String, api_name: :brandId

        # @!attribute campaign_id
        #   The ID of the campaign.
        #
        #   @return [String, nil]
        optional :campaign_id, String, api_name: :campaignId

        # @!attribute create_date
        #   Unix timestamp when campaign was created.
        #
        #   @return [String, nil]
        optional :create_date, String, api_name: :createDate

        # @!attribute csp_id
        #   Alphanumeric identifier of the CSP associated with this campaign.
        #
        #   @return [String, nil]
        optional :csp_id, String, api_name: :cspId

        # @!attribute is_t_mobile_registered
        #   Indicates whether the campaign is registered with T-Mobile.
        #
        #   @return [Boolean, nil]
        optional :is_t_mobile_registered, Telnyx::Internal::Type::Boolean, api_name: :isTMobileRegistered

        # @!method initialize(brand_id: nil, campaign_id: nil, create_date: nil, csp_id: nil, is_t_mobile_registered: nil)
        #   @param brand_id [String] Brand ID associated with the campaign.
        #
        #   @param campaign_id [String] The ID of the campaign.
        #
        #   @param create_date [String] Unix timestamp when campaign was created.
        #
        #   @param csp_id [String] Alphanumeric identifier of the CSP associated with this campaign.
        #
        #   @param is_t_mobile_registered [Boolean] Indicates whether the campaign is registered with T-Mobile.
      end

      class CampaignSuspendedEvent < Telnyx::Internal::Type::BaseModel
        # @!attribute campaign_id
        #   The ID of the campaign.
        #
        #   @return [String, nil]
        optional :campaign_id, String, api_name: :campaignId

        # @!attribute description
        #   Description of the event.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute status
        #   The status of the campaign.
        #
        #   @return [Symbol, Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent::Status, nil]
        optional :status, enum: -> { Telnyx::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent::Status }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent::Type, nil]
        optional :type, enum: -> { Telnyx::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent::Type }

        # @!method initialize(campaign_id: nil, description: nil, status: nil, type: nil)
        #   @param campaign_id [String] The ID of the campaign.
        #
        #   @param description [String] Description of the event.
        #
        #   @param status [Symbol, Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent::Status] The status of the campaign.
        #
        #   @param type [Symbol, Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent::Type]

        # The status of the campaign.
        #
        # @see Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DORMANT = :DORMANT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TELNYX_EVENT = :TELNYX_EVENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Telnyx::Models::CallAIGatherEndedWebhookEvent, Telnyx::Models::CallAIGatherMessageHistoryUpdatedWebhookEvent, Telnyx::Models::CallAIGatherPartialResultsWebhookEvent, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent, Telnyx::Models::CallAnsweredWebhookEvent, Telnyx::Models::CallBridgedWebhookEvent, Telnyx::Models::CallConversationEndedWebhookEvent, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent, Telnyx::Models::CallDtmfReceivedWebhookEvent, Telnyx::Models::CallEnqueuedWebhookEvent, Telnyx::Models::CallForkStartedWebhookEvent, Telnyx::Models::CallForkStoppedWebhookEvent, Telnyx::Models::CallGatherEndedWebhookEvent, Telnyx::Models::CallHangupWebhookEvent, Telnyx::Models::CallInitiatedWebhookEvent, Telnyx::Models::CallLeftQueueWebhookEvent, Telnyx::Models::CallMachineDetectionEndedWebhookEvent, Telnyx::Models::CallMachineGreetingEndedWebhookEvent, Telnyx::Models::CallMachinePremiumDetectionEndedWebhookEvent, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent, Telnyx::Models::CallPlaybackEndedWebhookEvent, Telnyx::Models::CallPlaybackStartedWebhookEvent, Telnyx::Models::CallRecordingErrorWebhookEvent, Telnyx::Models::CallRecordingSavedWebhookEvent, Telnyx::Models::CallRecordingTranscriptionSavedWebhookEvent, Telnyx::Models::CallReferCompletedWebhookEvent, Telnyx::Models::CallReferFailedWebhookEvent, Telnyx::Models::CallReferStartedWebhookEvent, Telnyx::Models::CallSiprecFailedWebhookEvent, Telnyx::Models::CallSiprecStartedWebhookEvent, Telnyx::Models::CallSiprecStoppedWebhookEvent, Telnyx::Models::CallSpeakEndedWebhookEvent, Telnyx::Models::CallSpeakStartedWebhookEvent, Telnyx::Models::CallStreamingFailedWebhookEvent, Telnyx::Models::CallStreamingStartedWebhookEvent, Telnyx::Models::CallStreamingStoppedWebhookEvent, Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignStatusUpdateEvent, Telnyx::Models::UnsafeUnwrapWebhookEvent::CampaignSuspendedEvent, Telnyx::Models::ConferenceCreatedWebhookEvent, Telnyx::Models::ConferenceEndedWebhookEvent, Telnyx::Models::ConferenceFloorChangedWebhookEvent, Telnyx::Models::ConferenceParticipantJoinedWebhookEvent, Telnyx::Models::ConferenceParticipantLeftWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackStartedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakEndedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakStartedWebhookEvent, Telnyx::Models::ConferencePlaybackEndedWebhookEvent, Telnyx::Models::ConferencePlaybackStartedWebhookEvent, Telnyx::Models::ConferenceRecordingSavedWebhookEvent, Telnyx::Models::ConferenceSpeakEndedWebhookEvent, Telnyx::Models::ConferenceSpeakStartedWebhookEvent, Telnyx::Models::DeliveryUpdateWebhookEvent, Telnyx::Models::FaxDeliveredWebhookEvent, Telnyx::Models::FaxFailedWebhookEvent, Telnyx::Models::FaxMediaProcessedWebhookEvent, Telnyx::Models::FaxQueuedWebhookEvent, Telnyx::Models::FaxSendingStartedWebhookEvent, Telnyx::Models::InboundMessageWebhookEvent, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent, Telnyx::Models::ReplacedLinkClickWebhookEvent, Telnyx::Models::StreamingFailedWebhookEvent, Telnyx::Models::StreamingStartedWebhookEvent, Telnyx::Models::StreamingStoppedWebhookEvent, Telnyx::Models::TranscriptionWebhookEvent)]
    end
  end
end
