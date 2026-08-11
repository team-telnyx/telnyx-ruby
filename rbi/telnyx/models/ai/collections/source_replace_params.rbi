# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SourceReplaceParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::SourceReplaceParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :uuid

          sig { returns(T::Array[Telnyx::AI::Collections::SourceRequest]) }
          attr_accessor :sources

          sig do
            params(
              uuid: String,
              sources: T::Array[Telnyx::AI::Collections::SourceRequest::OrHash],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(uuid:, sources:, request_options: {})
          end

          sig do
            override.returns(
              {
                uuid: String,
                sources: T::Array[Telnyx::AI::Collections::SourceRequest],
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
