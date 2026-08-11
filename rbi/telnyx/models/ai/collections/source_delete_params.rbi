# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SourceDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::SourceDeleteParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :uuid

          sig { returns(String) }
          attr_accessor :source_id

          sig do
            params(
              uuid: String,
              source_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(uuid:, source_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                uuid: String,
                source_id: String,
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
