# typed: strong

module Telnyx
  module Models
    module AI
      module OpenAI
        class EmbeddingCreateEmbeddingsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Input text to embed. Can be a string or array of strings.
          sig do
            returns(
              Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::Input::Variants
            )
          end
          attr_accessor :input

          # ID of the model to use. Use the List embedding models endpoint to see available
          # models.
          sig { returns(String) }
          attr_accessor :model

          # The number of dimensions the resulting output embeddings should have. Only
          # supported in some models.
          sig { returns(T.nilable(Integer)) }
          attr_reader :dimensions

          sig { params(dimensions: Integer).void }
          attr_writer :dimensions

          # The format to return the embeddings in.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::OrSymbol
              )
            )
          end
          attr_reader :encoding_format

          sig do
            params(
              encoding_format:
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::OrSymbol
            ).void
          end
          attr_writer :encoding_format

          # A unique identifier representing your end-user for monitoring and abuse
          # detection.
          sig { returns(T.nilable(String)) }
          attr_reader :user

          sig { params(user: String).void }
          attr_writer :user

          sig do
            params(
              input:
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::Input::Variants,
              model: String,
              dimensions: Integer,
              encoding_format:
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::OrSymbol,
              user: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Input text to embed. Can be a string or array of strings.
            input:,
            # ID of the model to use. Use the List embedding models endpoint to see available
            # models.
            model:,
            # The number of dimensions the resulting output embeddings should have. Only
            # supported in some models.
            dimensions: nil,
            # The format to return the embeddings in.
            encoding_format: nil,
            # A unique identifier representing your end-user for monitoring and abuse
            # detection.
            user: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                input:
                  Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::Input::Variants,
                model: String,
                dimensions: Integer,
                encoding_format:
                  Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::OrSymbol,
                user: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Input text to embed. Can be a string or array of strings.
          module Input
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, T::Array[String]) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::Input::Variants
                ]
              )
            end
            def self.variants
            end

            StringArray =
              T.let(
                Telnyx::Internal::Type::ArrayOf[String],
                Telnyx::Internal::Type::Converter
              )
          end

          # The format to return the embeddings in.
          module EncodingFormat
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FLOAT =
              T.let(
                :float,
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::TaggedSymbol
              )
            BASE64 =
              T.let(
                :base64,
                Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
