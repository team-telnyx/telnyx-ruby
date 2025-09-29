# typed: strong

module Telnyx
  module Models
    class PrivateWirelessGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PrivateWirelessGatewayCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The private wireless gateway name.
      sig { returns(String) }
      attr_accessor :name

      # The identification of the related network resource.
      sig { returns(String) }
      attr_accessor :network_id

      # The code of the region where the private wireless gateway will be assigned. A
      # list of available regions can be found at the regions endpoint
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      sig do
        params(
          name: String,
          network_id: String,
          region_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The private wireless gateway name.
        name:,
        # The identification of the related network resource.
        network_id:,
        # The code of the region where the private wireless gateway will be assigned. A
        # list of available regions can be found at the regions endpoint
        region_code: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            network_id: String,
            region_code: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
