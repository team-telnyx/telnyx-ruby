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
            Telnyx::CampaignStatusUpdate,
            Telnyx::ConferenceCreatedWebhookEvent,
            Telnyx::ConferenceEndedWebhookEvent,
            Telnyx::ConferenceFloorChanged,
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
            Telnyx::FaxDelivered,
            Telnyx::FaxFailed,
            Telnyx::FaxMediaProcessed,
            Telnyx::FaxQueued,
            Telnyx::FaxSendingStarted,
            Telnyx::InboundMessageWebhookEvent,
            Telnyx::NumberOrderStatusUpdate,
            Telnyx::ReplacedLinkClickWebhookEvent,
            Telnyx::TranscriptionWebhookEvent
          )
        end

      sig { override.returns(T::Array[Telnyx::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
