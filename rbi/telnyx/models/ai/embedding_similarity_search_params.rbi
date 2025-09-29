# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingSimilaritySearchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::EmbeddingSimilaritySearchParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :bucket_name

        sig { returns(String) }
        attr_accessor :query

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_of_docs

        sig { params(num_of_docs: Integer).void }
        attr_writer :num_of_docs

        sig do
          params(
            bucket_name: String,
            query: String,
            num_of_docs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          bucket_name:,
          query:,
          num_of_docs: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              bucket_name: String,
              query: String,
              num_of_docs: Integer,
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
