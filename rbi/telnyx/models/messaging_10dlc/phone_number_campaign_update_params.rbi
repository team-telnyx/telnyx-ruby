# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class PhoneNumberCampaignUpdateParams < Telnyx::Models::Messaging10dlc::PhoneNumberCampaignCreate
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::PhoneNumberCampaignUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :campaign_phone_number

        sig do
          params(
            campaign_phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(campaign_phone_number:, request_options: {})
        end

        sig do
          override.returns(
            {
              campaign_phone_number: String,
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
