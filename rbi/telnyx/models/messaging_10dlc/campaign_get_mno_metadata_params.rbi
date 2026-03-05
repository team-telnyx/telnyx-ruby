# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class CampaignGetMnoMetadataParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::CampaignGetMnoMetadataParams,
              Telnyx::Internal::AnyHash
            )
          end

        # ID of the campaign in question
        sig { returns(String) }
        attr_accessor :campaign_id

        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the campaign in question
          campaign_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { campaign_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
