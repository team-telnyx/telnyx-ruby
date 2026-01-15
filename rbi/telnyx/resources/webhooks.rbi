# typed: strong

module Telnyx
  module Resources
    class Webhooks
      sig do
        params(payload: String).returns(
          T.any(
            Telnyx::CallAIGatherEndedWebhookEvent,
            Telnyx::CallAIGatherMessageHistoryUpdatedWebhookEvent,
            Telnyx::CallAIGatherPartialResultsWebhookEvent,
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
            Telnyx::CampaignStatusUpdateWebhookEvent,
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
            Telnyx::TranscriptionWebhookEvent
          )
        )
      end
      def unsafe_unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      sig do
        params(payload: String).returns(
          T.any(
            Telnyx::CallAIGatherEndedWebhookEvent,
            Telnyx::CallAIGatherMessageHistoryUpdatedWebhookEvent,
            Telnyx::CallAIGatherPartialResultsWebhookEvent,
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
            Telnyx::CampaignStatusUpdateWebhookEvent,
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
            Telnyx::TranscriptionWebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
