# typed: strong

module Telnyx
  module Models
    class EmailTemplateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailTemplateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::EmailTemplate) }
      attr_reader :data

      sig { params(data: Telnyx::EmailTemplate::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::EmailTemplate::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::EmailTemplate }) }
      def to_hash
      end
    end
  end
end
