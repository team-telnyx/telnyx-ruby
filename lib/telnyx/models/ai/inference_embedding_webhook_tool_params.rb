# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingWebhookToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Type]
        required :type, enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type }

        # @!attribute webhook
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook]
        required :webhook, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook }

        # @!method initialize(type:, webhook:)
        #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Type]
        #   @param webhook [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook]

        # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams#type
        module Type
          extend Telnyx::Internal::Type::Enum

          WEBHOOK = :webhook

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams#webhook
        class Webhook < Telnyx::Internal::Type::BaseModel
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
          #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters, nil]
          optional :body_parameters, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters }

          # @!attribute headers
          #   The headers to be sent to the external tool.
          #
          #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header>, nil]
          optional :headers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header] }

          # @!attribute method_
          #   The HTTP method to be used when calling the external tool.
          #
          #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method, nil]
          optional :method_,
                   enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method },
                   api_name: :method

          # @!attribute path_parameters
          #   The path parameters the webhook tool accepts, described as a JSON Schema object.
          #   These parameters will be passed to the webhook as the path of the request if the
          #   URL contains a placeholder for a value. See the
          #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          #   documentation about the format
          #
          #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters, nil]
          optional :path_parameters, -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters }

          # @!attribute query_parameters
          #   The query parameters the webhook tool accepts, described as a JSON Schema
          #   object. These parameters will be passed to the webhook as the query of the
          #   request. See the
          #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          #   documentation about the format
          #
          #   @return [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters, nil]
          optional :query_parameters,
                   -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters }

          # @!attribute timeout_ms
          #   The maximum number of milliseconds to wait for the webhook to respond. Only
          #   applicable when async is false.
          #
          #   @return [Integer, nil]
          optional :timeout_ms, Integer

          # @!method initialize(description:, name:, url:, async: nil, body_parameters: nil, headers: nil, method_: nil, path_parameters: nil, query_parameters: nil, timeout_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook} for more
          #   details.
          #
          #   @param description [String] The description of the tool.
          #
          #   @param name [String] The name of the tool.
          #
          #   @param url [String] The URL of the external tool to be called. This URL is going to be used by the a
          #
          #   @param async [Boolean] If async, the assistant will move forward without waiting for your server to res
          #
          #   @param body_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters] The body parameters the webhook tool accepts, described as a JSON Schema object.
          #
          #   @param headers [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header>] The headers to be sent to the external tool.
          #
          #   @param method_ [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method] The HTTP method to be used when calling the external tool.
          #
          #   @param path_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters] The path parameters the webhook tool accepts, described as a JSON Schema object.
          #
          #   @param query_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters] The query parameters the webhook tool accepts, described as a JSON Schema object
          #
          #   @param timeout_ms [Integer] The maximum number of milliseconds to wait for the webhook to respond. Only appl

          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook#body_parameters
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
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type, nil]
            optional :type,
                     enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type }

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
            #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type]

            # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters#type
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
            #   {Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header} for
            #   more details.
            #
            #   @param name [String]
            #
            #   @param value [String] The value of the header. Note that we support mustache templating for the value.
          end

          # The HTTP method to be used when calling the external tool.
          #
          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook#method_
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

          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook#path_parameters
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
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type, nil]
            optional :type,
                     enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type }

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
            #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type]

            # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters#type
            module Type
              extend Telnyx::Internal::Type::Enum

              OBJECT = :object

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook#query_parameters
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
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type, nil]
            optional :type,
                     enum: -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type }

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
            #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type]

            # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters#type
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
end
