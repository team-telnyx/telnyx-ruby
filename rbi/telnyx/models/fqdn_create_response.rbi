# typed: strong

module Telnyx
  module Models
    class FqdnCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::FqdnCreateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Fqdn)) }
      attr_reader :data

      sig { params(data: Telnyx::Fqdn::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Fqdn::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Fqdn }) }
      def to_hash
      end
    end
  end
end
