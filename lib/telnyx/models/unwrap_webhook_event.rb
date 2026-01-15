# frozen_string_literal: true

module Telnyx
  module Models
    module UnwrapWebhookEvent
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::CallAIGatherEndedWebhookEvent }

      variant -> { Telnyx::CallAIGatherMessageHistoryUpdatedWebhookEvent }

      variant -> { Telnyx::CallAIGatherPartialResultsWebhookEvent }

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

      variant -> { Telnyx::CampaignStatusUpdateWebhookEvent }

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

      variant -> { Telnyx::TranscriptionWebhookEvent }

      # @!method self.variants
      #   @return [Array(Telnyx::Models::CallAIGatherEndedWebhookEvent, Telnyx::Models::CallAIGatherMessageHistoryUpdatedWebhookEvent, Telnyx::Models::CallAIGatherPartialResultsWebhookEvent, Telnyx::Models::CallAnsweredWebhookEvent, Telnyx::Models::CallBridgedWebhookEvent, Telnyx::Models::CallConversationEndedWebhookEvent, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent, Telnyx::Models::CallDtmfReceivedWebhookEvent, Telnyx::Models::CallEnqueuedWebhookEvent, Telnyx::Models::CallForkStartedWebhookEvent, Telnyx::Models::CallForkStoppedWebhookEvent, Telnyx::Models::CallGatherEndedWebhookEvent, Telnyx::Models::CallHangupWebhookEvent, Telnyx::Models::CallInitiatedWebhookEvent, Telnyx::Models::CallLeftQueueWebhookEvent, Telnyx::Models::CallMachineDetectionEndedWebhookEvent, Telnyx::Models::CallMachineGreetingEndedWebhookEvent, Telnyx::Models::CallMachinePremiumDetectionEndedWebhookEvent, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent, Telnyx::Models::CallPlaybackEndedWebhookEvent, Telnyx::Models::CallPlaybackStartedWebhookEvent, Telnyx::Models::CallRecordingErrorWebhookEvent, Telnyx::Models::CallRecordingSavedWebhookEvent, Telnyx::Models::CallRecordingTranscriptionSavedWebhookEvent, Telnyx::Models::CallReferCompletedWebhookEvent, Telnyx::Models::CallReferFailedWebhookEvent, Telnyx::Models::CallReferStartedWebhookEvent, Telnyx::Models::CallSiprecFailedWebhookEvent, Telnyx::Models::CallSiprecStartedWebhookEvent, Telnyx::Models::CallSiprecStoppedWebhookEvent, Telnyx::Models::CallSpeakEndedWebhookEvent, Telnyx::Models::CallSpeakStartedWebhookEvent, Telnyx::Models::CallStreamingFailedWebhookEvent, Telnyx::Models::CallStreamingStartedWebhookEvent, Telnyx::Models::CallStreamingStoppedWebhookEvent, Telnyx::Models::CampaignStatusUpdateWebhookEvent, Telnyx::Models::ConferenceCreatedWebhookEvent, Telnyx::Models::ConferenceEndedWebhookEvent, Telnyx::Models::ConferenceFloorChangedWebhookEvent, Telnyx::Models::ConferenceParticipantJoinedWebhookEvent, Telnyx::Models::ConferenceParticipantLeftWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackStartedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakEndedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakStartedWebhookEvent, Telnyx::Models::ConferencePlaybackEndedWebhookEvent, Telnyx::Models::ConferencePlaybackStartedWebhookEvent, Telnyx::Models::ConferenceRecordingSavedWebhookEvent, Telnyx::Models::ConferenceSpeakEndedWebhookEvent, Telnyx::Models::ConferenceSpeakStartedWebhookEvent, Telnyx::Models::DeliveryUpdateWebhookEvent, Telnyx::Models::FaxDeliveredWebhookEvent, Telnyx::Models::FaxFailedWebhookEvent, Telnyx::Models::FaxMediaProcessedWebhookEvent, Telnyx::Models::FaxQueuedWebhookEvent, Telnyx::Models::FaxSendingStartedWebhookEvent, Telnyx::Models::InboundMessageWebhookEvent, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent, Telnyx::Models::ReplacedLinkClickWebhookEvent, Telnyx::Models::TranscriptionWebhookEvent)]
    end
  end
end
