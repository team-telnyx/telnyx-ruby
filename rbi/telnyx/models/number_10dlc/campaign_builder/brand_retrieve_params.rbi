# typed: strong

module Telnyx
  module Models
    module Number10dlc
      module CampaignBuilder
        class BrandRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Number10dlc::CampaignBuilder::BrandRetrieveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :brand_id

          sig do
            params(
              brand_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(brand_id:, request_options: {})
          end

          sig do
            override.returns(
              { brand_id: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
