# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        module InsightGroups
          class InsightDeleteUnassignParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Conversations::InsightGroups::InsightDeleteUnassignParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # The ID of the insight group
            sig { returns(String) }
            attr_accessor :group_id

            sig do
              params(
                group_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The ID of the insight group
              group_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                { group_id: String, request_options: Telnyx::RequestOptions }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
