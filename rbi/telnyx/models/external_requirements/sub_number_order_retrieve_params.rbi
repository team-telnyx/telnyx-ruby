# typed: strong

module Telnyx
  module Models
    module ExternalRequirements
      class SubNumberOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalRequirements::SubNumberOrderRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :regulatory_requirement_id

        sig { returns(String) }
        attr_accessor :sub_number_order_id

        sig do
          params(
            regulatory_requirement_id: String,
            sub_number_order_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          regulatory_requirement_id:,
          sub_number_order_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              regulatory_requirement_id: String,
              sub_number_order_id: String,
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
