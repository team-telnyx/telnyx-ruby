# frozen_string_literal: true

require "json"
require_relative "../lib/webhook_verification"

module Telnyx
  module Resources
    class Webhooks
      # Include the WebhookVerification module for ED25519 signature verification.
      # This module provides verify! and do_verify_signature methods.
      include Telnyx::Lib::WebhookVerification

      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Telnyx::Models::CallAIGatherEndedWebhookEvent, Telnyx::Models::CallAIGatherMessageHistoryUpdatedWebhookEvent, Telnyx::Models::CallAIGatherPartialResultsWebhookEvent, Telnyx::Models::CallAnsweredWebhookEvent, Telnyx::Models::CallBridgedWebhookEvent, Telnyx::Models::CallConversationEndedWebhookEvent, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent, Telnyx::Models::CallCostWebhookEvent, Telnyx::Models::CallDtmfReceivedWebhookEvent, Telnyx::Models::CallEnqueuedWebhookEvent, Telnyx::Models::CallForkStartedWebhookEvent, Telnyx::Models::CallForkStoppedWebhookEvent, Telnyx::Models::CallGatherEndedWebhookEvent, Telnyx::Models::CallHangupWebhookEvent, Telnyx::Models::CallInitiatedWebhookEvent, Telnyx::Models::CallLeftQueueWebhookEvent, Telnyx::Models::CallMachineDetectionEndedWebhookEvent, Telnyx::Models::CallMachineGreetingEndedWebhookEvent, Telnyx::Models::CallMachinePremiumDetectionEndedWebhookEvent, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent, Telnyx::Models::CallPlaybackEndedWebhookEvent, Telnyx::Models::CallPlaybackStartedWebhookEvent, Telnyx::Models::CallRecordingErrorWebhookEvent, Telnyx::Models::CallRecordingSavedWebhookEvent, Telnyx::Models::CallRecordingTranscriptionSavedWebhookEvent, Telnyx::Models::CallReferCompletedWebhookEvent, Telnyx::Models::CallReferFailedWebhookEvent, Telnyx::Models::CallReferStartedWebhookEvent, Telnyx::Models::CallSiprecFailedWebhookEvent, Telnyx::Models::CallSiprecStartedWebhookEvent, Telnyx::Models::CallSiprecStoppedWebhookEvent, Telnyx::Models::CallSpeakEndedWebhookEvent, Telnyx::Models::CallSpeakStartedWebhookEvent, Telnyx::Models::CallStreamingFailedWebhookEvent, Telnyx::Models::CallStreamingStartedWebhookEvent, Telnyx::Models::CallStreamingStoppedWebhookEvent, Telnyx::Models::CampaignStatusUpdate, Telnyx::Models::ConferenceCreatedWebhookEvent, Telnyx::Models::ConferenceEndedWebhookEvent, Telnyx::Models::ConferenceFloorChanged, Telnyx::Models::ConferenceParticipantJoinedWebhookEvent, Telnyx::Models::ConferenceParticipantLeftWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackStartedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakEndedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakStartedWebhookEvent, Telnyx::Models::ConferencePlaybackEndedWebhookEvent, Telnyx::Models::ConferencePlaybackStartedWebhookEvent, Telnyx::Models::ConferenceRecordingSavedWebhookEvent, Telnyx::Models::ConferenceSpeakEndedWebhookEvent, Telnyx::Models::ConferenceSpeakStartedWebhookEvent, Telnyx::Models::DeliveryUpdateWebhookEvent, Telnyx::Models::FaxDelivered, Telnyx::Models::FaxFailed, Telnyx::Models::FaxMediaProcessed, Telnyx::Models::FaxQueued, Telnyx::Models::FaxSendingStarted, Telnyx::Models::InboundMessageWebhookEvent, Telnyx::Models::NumberOrderStatusUpdate, Telnyx::Models::ReplacedLinkClickWebhookEvent, Telnyx::Models::TranscriptionWebhookEvent]
      def unsafe_unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Telnyx::Internal::Type::Converter.coerce(Telnyx::Models::UnsafeUnwrapWebhookEvent, parsed)
      end

      # @param payload [String] The raw webhook payload as a string
      #
      # @param headers [Hash{String=>String}, nil] Optional HTTP headers for signature verification
      #
      # @param key [String, nil] The webhook signing key (public key, base64-encoded)
      #
      # @return [Telnyx::Models::CallAIGatherEndedWebhookEvent, Telnyx::Models::CallAIGatherMessageHistoryUpdatedWebhookEvent, Telnyx::Models::CallAIGatherPartialResultsWebhookEvent, Telnyx::Models::CallAnsweredWebhookEvent, Telnyx::Models::CallBridgedWebhookEvent, Telnyx::Models::CallConversationEndedWebhookEvent, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent, Telnyx::Models::CallCostWebhookEvent, Telnyx::Models::CallDtmfReceivedWebhookEvent, Telnyx::Models::CallEnqueuedWebhookEvent, Telnyx::Models::CallForkStartedWebhookEvent, Telnyx::Models::CallForkStoppedWebhookEvent, Telnyx::Models::CallGatherEndedWebhookEvent, Telnyx::Models::CallHangupWebhookEvent, Telnyx::Models::CallInitiatedWebhookEvent, Telnyx::Models::CallLeftQueueWebhookEvent, Telnyx::Models::CallMachineDetectionEndedWebhookEvent, Telnyx::Models::CallMachineGreetingEndedWebhookEvent, Telnyx::Models::CallMachinePremiumDetectionEndedWebhookEvent, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent, Telnyx::Models::CallPlaybackEndedWebhookEvent, Telnyx::Models::CallPlaybackStartedWebhookEvent, Telnyx::Models::CallRecordingErrorWebhookEvent, Telnyx::Models::CallRecordingSavedWebhookEvent, Telnyx::Models::CallRecordingTranscriptionSavedWebhookEvent, Telnyx::Models::CallReferCompletedWebhookEvent, Telnyx::Models::CallReferFailedWebhookEvent, Telnyx::Models::CallReferStartedWebhookEvent, Telnyx::Models::CallSiprecFailedWebhookEvent, Telnyx::Models::CallSiprecStartedWebhookEvent, Telnyx::Models::CallSiprecStoppedWebhookEvent, Telnyx::Models::CallSpeakEndedWebhookEvent, Telnyx::Models::CallSpeakStartedWebhookEvent, Telnyx::Models::CallStreamingFailedWebhookEvent, Telnyx::Models::CallStreamingStartedWebhookEvent, Telnyx::Models::CallStreamingStoppedWebhookEvent, Telnyx::Models::CampaignStatusUpdate, Telnyx::Models::ConferenceCreatedWebhookEvent, Telnyx::Models::ConferenceEndedWebhookEvent, Telnyx::Models::ConferenceFloorChanged, Telnyx::Models::ConferenceParticipantJoinedWebhookEvent, Telnyx::Models::ConferenceParticipantLeftWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent, Telnyx::Models::ConferenceParticipantPlaybackStartedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakEndedWebhookEvent, Telnyx::Models::ConferenceParticipantSpeakStartedWebhookEvent, Telnyx::Models::ConferencePlaybackEndedWebhookEvent, Telnyx::Models::ConferencePlaybackStartedWebhookEvent, Telnyx::Models::ConferenceRecordingSavedWebhookEvent, Telnyx::Models::ConferenceSpeakEndedWebhookEvent, Telnyx::Models::ConferenceSpeakStartedWebhookEvent, Telnyx::Models::DeliveryUpdateWebhookEvent, Telnyx::Models::FaxDelivered, Telnyx::Models::FaxFailed, Telnyx::Models::FaxMediaProcessed, Telnyx::Models::FaxQueued, Telnyx::Models::FaxSendingStarted, Telnyx::Models::InboundMessageWebhookEvent, Telnyx::Models::NumberOrderStatusUpdate, Telnyx::Models::ReplacedLinkClickWebhookEvent, Telnyx::Models::TranscriptionWebhookEvent]
      def unwrap(payload, headers = nil, key: nil)
        # Get public key from argument or client
        public_key = key || @client.public_key

        # If we have headers and a public key, verify the signature using ED25519
        if headers && !headers.empty? && public_key && !public_key.empty?
          do_verify_signature(payload, headers, public_key)
        end

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
