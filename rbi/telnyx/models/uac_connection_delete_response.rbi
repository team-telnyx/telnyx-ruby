# typed: strong

module Telnyx
  module Models
    class UacConnectionDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::UacConnectionDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
      # of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
      # PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
      # registration.
      sig { returns(T.nilable(Telnyx::UacConnection)) }
      attr_reader :data

      sig { params(data: Telnyx::UacConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::UacConnection::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
        # of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
        # PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
        # registration.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::UacConnection }) }
      def to_hash
      end
    end
  end
end
