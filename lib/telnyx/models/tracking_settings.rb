# frozen_string_literal: true

module Telnyx
  module Models
    class TrackingSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute click_tracking
      #   Whether to rewrite links for click tracking in this message.
      #
      #   @return [Boolean, nil]
      optional :click_tracking, Telnyx::Internal::Type::Boolean

      # @!attribute open_tracking
      #   Whether to inject an open-tracking pixel for this message.
      #
      #   @return [Boolean, nil]
      optional :open_tracking, Telnyx::Internal::Type::Boolean

      # @!method initialize(click_tracking: nil, open_tracking: nil)
      #   Per-send open and click tracking overrides. Omitted properties inherit the
      #   sender domain's tracking settings.
      #
      #   @param click_tracking [Boolean] Whether to rewrite links for click tracking in this message.
      #
      #   @param open_tracking [Boolean] Whether to inject an open-tracking pixel for this message.
    end
  end
end
