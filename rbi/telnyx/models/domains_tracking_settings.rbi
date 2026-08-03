# typed: strong

module Telnyx
  module Models
    class DomainsTrackingSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DomainsTrackingSettings, Telnyx::Internal::AnyHash)
        end

      # Rewrite HTML links through a tracking redirect to record click events.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :click_tracking

      sig { params(click_tracking: T::Boolean).void }
      attr_writer :click_tracking

      # Inject a tracking pixel into HTML messages to record open events.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :open_tracking

      sig { params(open_tracking: T::Boolean).void }
      attr_writer :open_tracking

      # Add RFC 8058 List-Unsubscribe headers with a signed one-click unsubscribe URL.
      # Enabled by default; Gmail/Yahoo bulk-sender rules require one-click unsubscribe
      # support.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :unsubscribe_tracking

      sig { params(unsubscribe_tracking: T::Boolean).void }
      attr_writer :unsubscribe_tracking

      sig do
        params(
          click_tracking: T::Boolean,
          open_tracking: T::Boolean,
          unsubscribe_tracking: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Rewrite HTML links through a tracking redirect to record click events.
        click_tracking: nil,
        # Inject a tracking pixel into HTML messages to record open events.
        open_tracking: nil,
        # Add RFC 8058 List-Unsubscribe headers with a signed one-click unsubscribe URL.
        # Enabled by default; Gmail/Yahoo bulk-sender rules require one-click unsubscribe
        # support.
        unsubscribe_tracking: nil
      )
      end

      sig do
        override.returns(
          {
            click_tracking: T::Boolean,
            open_tracking: T::Boolean,
            unsubscribe_tracking: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
