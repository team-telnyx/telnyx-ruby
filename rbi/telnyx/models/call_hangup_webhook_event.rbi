# typed: strong

module Telnyx
  module Models
    class CallHangupWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallHangupWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallHangup)) }
      attr_reader :data

      sig { params(data: Telnyx::CallHangup::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::CallHangup::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallHangup }) }
      def to_hash
      end
    end
  end
end
