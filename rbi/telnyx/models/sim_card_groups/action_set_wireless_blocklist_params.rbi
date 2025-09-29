# typed: strong

module Telnyx
  module Models
    module SimCardGroups
      class ActionSetWirelessBlocklistParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardGroups::ActionSetWirelessBlocklistParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The identification of the related Wireless Blocklist resource.
        sig { returns(String) }
        attr_accessor :wireless_blocklist_id

        sig do
          params(
            wireless_blocklist_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The identification of the related Wireless Blocklist resource.
          wireless_blocklist_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              wireless_blocklist_id: String,
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
