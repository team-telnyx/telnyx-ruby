# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingWebhookToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute description
        #   The description of the tool.
        #
        #   @return [String]
        required :description, String

        # @!attribute name
        #   The name of the tool.
        #
        #   @return [String]
        required :name, String

        # @!attribute url
        #   The URL of the external tool to be called. This URL is going to be used by the
        #   assistant. The URL can be templated like: `https://example.com/api/v1/{id}`,
        #   where `{id}` is a placeholder for a value that will be provided by the assistant
        #   if `path_parameters` are provided with the `id` attribute.
        #
        #   @return [String]
        required :url, String

        # @!attribute async
        #   If async, the assistant will move forward without waiting for your server to
        #   respond.
        #
        #   @return [Boolean, nil]
        optional :async, Telnyx::Internal::Type::Boolean

        # @!attribute body_parameters
        #   The body parameters the webhook tool accepts, described as a JSON Schema object.
        #   These parameters will be passed to the webhook as the body of the request. See
        #   the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
        #   for documentation about the format
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::BodyParameters, nil]
        optional :body_parameters, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters }

        # @!attribute headers
        #   The headers to be sent to the external tool.
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Header>, nil]
        optional :headers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbeddingWebhookToolParams::Header] }

        # @!attribute http_method
        #   The HTTP method to be used when calling the external tool.
        #
        #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Method, nil]
        optional :http_method,
                 enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method },
                 api_name: :method

        # @!attribute path_parameters
        #   The path parameters the webhook tool accepts, described as a JSON Schema object.
        #   These parameters will be passed to the webhook as the path of the request if the
        #   URL contains a placeholder for a value. See the
        #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
        #   documentation about the format
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::PathParameters, nil]
        optional :path_parameters, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters }

        # @!attribute query_parameters
        #   The query parameters the webhook tool accepts, described as a JSON Schema
        #   object. These parameters will be passed to the webhook as the query of the
        #   request. See the
        #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
        #   documentation about the format
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::QueryParameters, nil]
        optional :query_parameters, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters }

        # @!attribute timeout_ms
        #   The maximum number of milliseconds to wait for the webhook to respond. Only
        #   applicable when async is false.
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!method initialize(description:, name:, url:, async: nil, body_parameters: nil, headers: nil, http_method: nil, path_parameters: nil, query_parameters: nil, timeout_ms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams} for more details.
        #
        #   @param description [String] The description of the tool.
        #
        #   @param name [String] The name of the tool.
        #
        #   @param url [String] The URL of the external tool to be called. This URL is going to be used by the a
        #
        #   @param async [Boolean] If async, the assistant will move forward without waiting for your server to res
        #
        #   @param body_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::BodyParameters] The body parameters the webhook tool accepts, described as a JSON Schema object.
        #
        #   @param headers [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Header>] The headers to be sent to the external tool.
        #
        #   @param http_method [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Method] The HTTP method to be used when calling the external tool.
        #
        #   @param path_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::PathParameters] The path parameters the webhook tool accepts, described as a JSON Schema object.
        #
        #   @param query_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::QueryParameters] The query parameters the webhook tool accepts, described as a JSON Schema object
        #
        #   @param timeout_ms [Integer] The maximum number of milliseconds to wait for the webhook to respond. Only appl

        # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams#body_parameters
        class BodyParameters < Telnyx::Internal::Type::BaseModel
          # @!attribute properties
          #   The properties of the body parameters.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute required
          #   The required properties of the body parameters.
          #
          #   @return [Array<String>, nil]
          optional :required, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type, nil]
          optional :type, enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type }

          # @!method initialize(properties: nil, required: nil, type: nil)
          #   The body parameters the webhook tool accepts, described as a JSON Schema object.
          #   These parameters will be passed to the webhook as the body of the request. See
          #   the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
          #   for documentation about the format
          #
          #   @param properties [Hash{Symbol=>Object}] The properties of the body parameters.
          #
          #   @param required [Array<String>] The required properties of the body parameters.
          #
          #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type]

          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::BodyParameters#type
          module Type
            extend Telnyx::Internal::Type::Enum

            OBJECT = :object

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Header < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute value
          #   The value of the header. Note that we support mustache templating for the value.
          #   For example you can use
          #   `Bearer {{#integration_secret}}test-secret{{/integration_secret}}` to pass the
          #   value of the integration secret as the bearer token.
          #   [Telnyx signature headers](https://developers.telnyx.com/docs/voice/programmable-voice/voice-api-webhooks)
          #   will be automatically added to the request.
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(name: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Header} for more
          #   details.
          #
          #   @param name [String]
          #
          #   @param value [String] The value of the header. Note that we support mustache templating for the value.
        end

        # The HTTP method to be used when calling the external tool.
        #
        # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams#http_method
        module Method
          extend Telnyx::Internal::Type::Enum

          GET = :GET
          POST = :POST
          PUT = :PUT
          DELETE = :DELETE
          PATCH = :PATCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams#path_parameters
        class PathParameters < Telnyx::Internal::Type::BaseModel
          # @!attribute properties
          #   The properties of the path parameters.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute required
          #   The required properties of the path parameters.
          #
          #   @return [Array<String>, nil]
          optional :required, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type, nil]
          optional :type, enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type }

          # @!method initialize(properties: nil, required: nil, type: nil)
          #   The path parameters the webhook tool accepts, described as a JSON Schema object.
          #   These parameters will be passed to the webhook as the path of the request if the
          #   URL contains a placeholder for a value. See the
          #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          #   documentation about the format
          #
          #   @param properties [Hash{Symbol=>Object}] The properties of the path parameters.
          #
          #   @param required [Array<String>] The required properties of the path parameters.
          #
          #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type]

          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::PathParameters#type
          module Type
            extend Telnyx::Internal::Type::Enum

            OBJECT = :object

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams#query_parameters
        class QueryParameters < Telnyx::Internal::Type::BaseModel
          # @!attribute properties
          #   The properties of the query parameters.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute required
          #   The required properties of the query parameters.
          #
          #   @return [Array<String>, nil]
          optional :required, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type, nil]
          optional :type, enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type }

          # @!method initialize(properties: nil, required: nil, type: nil)
          #   The query parameters the webhook tool accepts, described as a JSON Schema
          #   object. These parameters will be passed to the webhook as the query of the
          #   request. See the
          #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          #   documentation about the format
          #
          #   @param properties [Hash{Symbol=>Object}] The properties of the query parameters.
          #
          #   @param required [Array<String>] The required properties of the query parameters.
          #
          #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type]

          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::QueryParameters#type
          module Type
            extend Telnyx::Internal::Type::Enum

            OBJECT = :object

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
