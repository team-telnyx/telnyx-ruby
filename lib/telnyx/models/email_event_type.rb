# frozen_string_literal: true

module Telnyx
  module Models
    module EmailEventType
      extend Telnyx::Internal::Type::Enum

      QUEUED = :queued
      DEFERRED = :deferred
      SCHEDULED = :scheduled
      CANCELLED = :cancelled
      SANDBOX = :sandbox
      SENDING = :sending
      SENT = :sent
      FAILED = :failed
      DELIVERED = :delivered
      BOUNCED = :bounced
      COMPLAINED = :complained
      REJECTED = :rejected
      OPENED = :opened
      CLICKED = :clicked
      UNSUBSCRIBED = :unsubscribed
      DAILY_LIMIT_EXCEEDED = :daily_limit_exceeded

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
