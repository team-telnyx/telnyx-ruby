# typed: strong

module Telnyx
  module Models
    class SpendLimitResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SpendLimitResponse, Telnyx::Internal::AnyHash)
        end

      # The spend limit, spend and block state of one product and period. The top-level
      # fields describe the total limit of the account; API key limits are nested in
      # `credential_limits`.
      sig { returns(Telnyx::SpendLimit) }
      attr_reader :data

      sig { params(data: Telnyx::SpendLimit::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::SpendLimit::OrHash).returns(T.attached_class) }
      def self.new(
        # The spend limit, spend and block state of one product and period. The top-level
        # fields describe the total limit of the account; API key limits are nested in
        # `credential_limits`.
        data:
      )
      end

      sig { override.returns({ data: Telnyx::SpendLimit }) }
      def to_hash
      end
    end
  end
end
