# frozen_string_literal: true

module Telnyx
  module Models
    class DomainsTrackingSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute click_tracking
      #   Rewrite HTML links through a tracking redirect to record click events.
      #
      #   @return [Boolean, nil]
      optional :click_tracking, Telnyx::Internal::Type::Boolean

      # @!attribute open_tracking
      #   Inject a tracking pixel into HTML messages to record open events.
      #
      #   @return [Boolean, nil]
      optional :open_tracking, Telnyx::Internal::Type::Boolean

      # @!attribute unsubscribe_tracking
      #   Add RFC 8058 List-Unsubscribe headers with a signed one-click unsubscribe URL.
      #   Enabled by default; Gmail/Yahoo bulk-sender rules require one-click unsubscribe
      #   support.
      #
      #   @return [Boolean, nil]
      optional :unsubscribe_tracking, Telnyx::Internal::Type::Boolean

      # @!method initialize(click_tracking: nil, open_tracking: nil, unsubscribe_tracking: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DomainsTrackingSettings} for more details.
      #
      #   @param click_tracking [Boolean] Rewrite HTML links through a tracking redirect to record click events.
      #
      #   @param open_tracking [Boolean] Inject a tracking pixel into HTML messages to record open events.
      #
      #   @param unsubscribe_tracking [Boolean] Add RFC 8058 List-Unsubscribe headers with a signed one-click unsubscribe URL. E
    end
  end
end
