# typed: strong

module Telnyx
  module Models
    class ConferenceRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConferenceRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Conference)) }
      attr_reader :data

      sig { params(data: Telnyx::Conference::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Conference::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Conference }) }
      def to_hash
      end
    end
  end
end
