# typed: strong

module Telnyx
  module Models
    class PayConnectorResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PayConnectorResponse, Telnyx::Internal::AnyHash)
        end

      # Organization-owned connector. Examples and config properties here describe
      # generic connectors; listing is not restricted to that type unless
      # filter[type]=generic is supplied. Passwords and bearer tokens are omitted, not
      # masked. Defaults for auth_type and timeout need not appear in stored config.
      sig { returns(T.nilable(Telnyx::PayConnector)) }
      attr_reader :data

      sig { params(data: Telnyx::PayConnector::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::PayConnector::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Organization-owned connector. Examples and config properties here describe
        # generic connectors; listing is not restricted to that type unless
        # filter[type]=generic is supplied. Passwords and bearer tokens are omitted, not
        # masked. Defaults for auth_type and timeout need not appear in stored config.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::PayConnector }) }
      def to_hash
      end
    end
  end
end
