# typed: strong

module Telnyx
  module Models
    class TexmlApplicationDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TexmlApplicationDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::TexmlApplication)) }
      attr_reader :data

      sig { params(data: Telnyx::TexmlApplication::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::TexmlApplication::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::TexmlApplication }) }
      def to_hash
      end
    end
  end
end
