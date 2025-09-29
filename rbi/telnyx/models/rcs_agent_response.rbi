# typed: strong

module Telnyx
  module Models
    class RcsAgentResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RcsAgentResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::RcsAgent)) }
      attr_reader :data

      sig { params(data: Telnyx::RcsAgent::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::RcsAgent::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::RcsAgent }) }
      def to_hash
      end
    end
  end
end
