# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightGroupUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightGroupUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the insight group
          sig { returns(String) }
          attr_accessor :group_id

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :webhook

          sig { params(webhook: String).void }
          attr_writer :webhook

          sig do
            params(
              group_id: String,
              description: String,
              name: String,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the insight group
            group_id:,
            description: nil,
            name: nil,
            webhook: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                group_id: String,
                description: String,
                name: String,
                webhook: String,
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
end
