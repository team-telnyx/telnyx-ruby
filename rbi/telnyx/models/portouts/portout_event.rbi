# typed: strong

module Telnyx
  module Models
    PortoutEvent = Portouts::PortoutEvent

    module Portouts
      module PortoutEvent
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Portouts::WebhookPortoutStatusChanged,
              Telnyx::Portouts::WebhookPortoutNewComment,
              Telnyx::Portouts::WebhookPortoutFocDateChanged
            )
          end

        sig do
          override.returns(T::Array[Telnyx::Portouts::PortoutEvent::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
