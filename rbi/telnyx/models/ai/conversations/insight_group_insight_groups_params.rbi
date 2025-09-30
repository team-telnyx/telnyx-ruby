# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightGroupInsightGroupsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightGroupInsightGroupsParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :webhook

          sig { params(webhook: String).void }
          attr_writer :webhook

          sig do
            params(
              name: String,
              description: String,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            name:,
            description: nil,
            webhook: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                name: String,
                description: String,
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
