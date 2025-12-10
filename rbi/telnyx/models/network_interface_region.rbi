# typed: strong

module Telnyx
  module Models
    class NetworkInterfaceRegion < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NetworkInterfaceRegion, Telnyx::Internal::AnyHash)
        end

      # The region the interface should be deployed to.
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      sig { params(region_code: String).returns(T.attached_class) }
      def self.new(
        # The region the interface should be deployed to.
        region_code: nil
      )
      end

      sig { override.returns({ region_code: String }) }
      def to_hash
      end
    end
  end
end
