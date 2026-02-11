# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module OpenAI
        # @see Telnyx::Resources::AI::OpenAI::Embeddings#create
        class EmbeddingCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute input
          #   Input text to embed. Can be a string or array of strings.
          #
          #   @return [String, Array<String>]
          required :input, union: -> { Telnyx::AI::OpenAI::EmbeddingCreateParams::Input }

          # @!attribute model
          #   ID of the model to use. Use the List embedding models endpoint to see available
          #   models.
          #
          #   @return [String]
          required :model, String

          # @!attribute dimensions
          #   The number of dimensions the resulting output embeddings should have. Only
          #   supported in some models.
          #
          #   @return [Integer, nil]
          optional :dimensions, Integer

          # @!attribute encoding_format
          #   The format to return the embeddings in.
          #
          #   @return [Symbol, Telnyx::Models::AI::OpenAI::EmbeddingCreateParams::EncodingFormat, nil]
          optional :encoding_format, enum: -> { Telnyx::AI::OpenAI::EmbeddingCreateParams::EncodingFormat }

          # @!attribute user
          #   A unique identifier representing your end-user for monitoring and abuse
          #   detection.
          #
          #   @return [String, nil]
          optional :user, String

          # @!method initialize(input:, model:, dimensions: nil, encoding_format: nil, user: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::OpenAI::EmbeddingCreateParams} for more details.
          #
          #   @param input [String, Array<String>] Input text to embed. Can be a string or array of strings.
          #
          #   @param model [String] ID of the model to use. Use the List embedding models endpoint to see available
          #
          #   @param dimensions [Integer] The number of dimensions the resulting output embeddings should have. Only suppo
          #
          #   @param encoding_format [Symbol, Telnyx::Models::AI::OpenAI::EmbeddingCreateParams::EncodingFormat] The format to return the embeddings in.
          #
          #   @param user [String] A unique identifier representing your end-user for monitoring and abuse detectio
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # Input text to embed. Can be a string or array of strings.
          module Input
            extend Telnyx::Internal::Type::Union

            # A single text string to embed
            variant String

            # An array of text strings to embed
            variant -> { Telnyx::Models::AI::OpenAI::EmbeddingCreateParams::Input::StringArray }

            # @!method self.variants
            #   @return [Array(String, Array<String>)]

            # @type [Telnyx::Internal::Type::Converter]
            StringArray = Telnyx::Internal::Type::ArrayOf[String]
          end

          # The format to return the embeddings in.
          module EncodingFormat
            extend Telnyx::Internal::Type::Enum

            FLOAT = :float
            BASE64 = :base64

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
