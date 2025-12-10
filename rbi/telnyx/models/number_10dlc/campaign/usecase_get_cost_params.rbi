# typed: strong

module Telnyx
  module Models
    module Number10dlc
      module Campaign
        class UsecaseGetCostParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Number10dlc::Campaign::UsecaseGetCostParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :usecase

          sig do
            params(
              usecase: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(usecase:, request_options: {})
          end

          sig do
            override.returns(
              { usecase: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
