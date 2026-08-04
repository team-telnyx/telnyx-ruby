# typed: strong

module Telnyx
  module Models
    class TrackingSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::TrackingSettings, Telnyx::Internal::AnyHash)
        end

      # Whether to rewrite links for click tracking in this message.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :click_tracking

      sig { params(click_tracking: T::Boolean).void }
      attr_writer :click_tracking

      # Whether to inject an open-tracking pixel for this message.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :open_tracking

      sig { params(open_tracking: T::Boolean).void }
      attr_writer :open_tracking

      # Per-send open and click tracking overrides. Omitted properties inherit the
      # sender domain's tracking settings.
      sig do
        params(click_tracking: T::Boolean, open_tracking: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(
        # Whether to rewrite links for click tracking in this message.
        click_tracking: nil,
        # Whether to inject an open-tracking pixel for this message.
        open_tracking: nil
      )
      end

      sig do
        override.returns(
          { click_tracking: T::Boolean, open_tracking: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end
