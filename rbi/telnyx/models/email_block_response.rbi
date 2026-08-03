# typed: strong

module Telnyx
  module Models
    class EmailBlockResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailBlockResponse, Telnyx::Internal::AnyHash)
        end

      # Suppression record. Schema fields hidden by the view: `account_id`,
      # `bounce_category`, `dsn_code`, `meta`.
      sig { returns(Telnyx::EmailBlock) }
      attr_reader :data

      sig { params(data: Telnyx::EmailBlock::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::EmailBlock::OrHash).returns(T.attached_class) }
      def self.new(
        # Suppression record. Schema fields hidden by the view: `account_id`,
        # `bounce_category`, `dsn_code`, `meta`.
        data:
      )
      end

      sig { override.returns({ data: Telnyx::EmailBlock }) }
      def to_hash
      end
    end
  end
end
