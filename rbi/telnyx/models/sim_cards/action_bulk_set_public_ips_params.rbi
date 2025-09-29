# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionBulkSetPublicIPsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCards::ActionBulkSetPublicIPsParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :sim_card_ids

        sig do
          params(
            sim_card_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(sim_card_ids:, request_options: {})
        end

        sig do
          override.returns(
            {
              sim_card_ids: T::Array[String],
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
