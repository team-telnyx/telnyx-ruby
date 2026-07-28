# typed: strong

module Telnyx
  module Models
    class EmailDomainResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailDomainResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::EmailDomain) }
      attr_reader :data

      sig { params(data: Telnyx::EmailDomain::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::EmailDomain::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::EmailDomain }) }
      def to_hash
      end
    end
  end
end
