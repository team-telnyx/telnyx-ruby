# frozen_string_literal: true

module Telnyx
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Telnyx::Models::CallAIGatherEndedWebhookEvent, Telnyx::Models::CallAIGatherMessageHistoryUpdatedWebhookEvent, Telnyx::Models::CallAIGatherPartialResultsWebhookEvent, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent, Telnyx::Models::CallAnsweredWebhookEvent, Telnyx::Models::CallBridgedWebhookEvent, Telnyx::Models::CallConversationEndedWebhookEvent, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent, Telnyx::Models::CallDtmfReceivedWebhookEvent, Telnyx::Models::CallEnqueuedWebhookEvent, Telnyx::Models::CallForkStartedWebhookEvent, Telnyx::Models::CallForkStoppedWebhookEvent, Telnyx::Models::CallGatherEndedWebhookEvent, Telnyx::Models::CallHangupWebhookEvent, Telnyx::Models::CallInitiatedWebhookEvent, Telnyx::Models::CallLeftQueueWebhookEvent, Telnyx::Models::CallMachineDetectionEndedWebhookEvent, Telnyx::Models::CallMachineGreetingEndedWebhookEvent, Telnyx::Models::CallMachinePremiumDetectionEndedWebhookEvent, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent, Telnyx::Models::CallPlaybackEndedWebhookEvent, Telnyx::Models::CallPlaybackStartedWebhookEvent, Telnyx::Models::CallRecordingErrorWebhookEvent, Telnyx::Models::CallRecordingSavedWebhookEvent, Telnyx::Models::CallRecordingTranscriptionSavedWebhookEvent, Telnyx::Models::CallReferCompletedWebhookEvent, Telnyx::Models::CallReferFailedWebhookEvent, Telnyx::Models::CallReferStartedWebhookEvent, Telnyx::Models::CallSiprecFailedWebhookEvent, Telnyx::Models::CallSiprecStartedWebhookEvent, Telnyx::Models::CallSiprecStoppedWebhookEvent, Telnyx::Models::CallSpeakEndedWebhookEvent, Telnyx::Models::CallSpeakStartedWebhookEvent, Telnyx::Models::CallStreamingFailedWebhookEvent, Telnyx::Models::CallStreamingStartedWebhookEvent, Telnyx::Models::CallStreamingStoppedWebhookEvent, Telnyx::Models::CampaignStatusUpdateWebhookEvent, Telnyx::Models::ConferenceCreatedWebhookEvent, Telnyx::Models::ConferenceEndedWebhookEvent, Telnyx::Models::ConferenceFloorChangedWebhookEvent, Telnyx::Models::ConferenceParticipantJoinedWebhookEvent, Telnyx::Models::ConferenceParticipantLeftWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackStartedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakEndedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakStartedWebhookEvent, Telnyx::Models::ConferencePlaybackEndedWebhookEvent, Telnyx::Models::ConferencePlaybackStartedWebhookEvent, Telnyx::Models::ConferenceRecordingSavedWebhookEvent, Telnyx::Models::ConferenceSpeakEndedWebhookEvent, Telnyx::Models::ConferenceSpeakStartedWebhookEvent, Telnyx::Models::DeliveryUpdateWebhookEvent, Telnyx::Models::FaxDeliveredWebhookEvent, Telnyx::Models::FaxFailedWebhookEvent, Telnyx::Models::FaxMediaProcessedWebhookEvent, Telnyx::Models::FaxQueuedWebhookEvent, Telnyx::Models::FaxSendingStartedWebhookEvent, Telnyx::Models::InboundMessageWebhookEvent, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent, Telnyx::Models::ReplacedLinkClickWebhookEvent, Telnyx::Models::StreamingFailedWebhookEvent, Telnyx::Models::StreamingStartedWebhookEvent, Telnyx::Models::StreamingStoppedWebhookEvent, Telnyx::Models::TranscriptionWebhookEvent]
      def unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Telnyx::Internal::Type::Converter.coerce(Telnyx::Models::UnwrapWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
