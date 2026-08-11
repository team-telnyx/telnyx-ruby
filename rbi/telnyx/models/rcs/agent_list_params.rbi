# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentListParams, Telnyx::Internal::AnyHash)
          end

        # Only return agents belonging to this brand.
        sig { returns(T.nilable(String)) }
        attr_reader :brand_id

        sig { params(brand_id: String).void }
        attr_writer :brand_id

        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Only return agents belonging to this brand.
          brand_id: nil,
          request_options: {}
        )
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
