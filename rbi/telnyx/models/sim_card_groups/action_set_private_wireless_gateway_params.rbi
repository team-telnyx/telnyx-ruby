# typed: strong

module Telnyx
  module Models
    module SimCardGroups
      class ActionSetPrivateWirelessGatewayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardGroups::ActionSetPrivateWirelessGatewayParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The identification of the related Private Wireless Gateway resource.
        sig { returns(String) }
        attr_accessor :private_wireless_gateway_id

        sig do
          params(
            private_wireless_gateway_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The identification of the related Private Wireless Gateway resource.
          private_wireless_gateway_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              private_wireless_gateway_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
