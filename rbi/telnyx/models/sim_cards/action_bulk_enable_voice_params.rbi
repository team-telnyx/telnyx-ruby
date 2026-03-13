# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionBulkEnableVoiceParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCards::ActionBulkEnableVoiceParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :sim_card_group_id

        sig do
          params(
            sim_card_group_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(sim_card_group_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              sim_card_group_id: String,
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
