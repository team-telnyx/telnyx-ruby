# typed: strong

module Telnyx
  module Models
    class BrandRetrieveResponse < Telnyx::Models::TelnyxBrand
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BrandRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Number of campaigns associated with the brand
      sig { returns(T.nilable(Float)) }
      attr_reader :assigned_campaigns_count

      sig { params(assigned_campaigns_count: Float).void }
      attr_writer :assigned_campaigns_count

      # Telnyx-specific extensions to The Campaign Registry's `Brand` type
      sig { params(assigned_campaigns_count: Float).returns(T.attached_class) }
      def self.new(
        # Number of campaigns associated with the brand
        assigned_campaigns_count: nil
      )
      end

      sig { override.returns({ assigned_campaigns_count: Float }) }
      def to_hash
      end
    end
  end
end
