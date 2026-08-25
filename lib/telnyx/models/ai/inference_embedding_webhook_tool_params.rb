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

          # @!attribute async_timeout_ms
          #   Maximum time in milliseconds that the conversation worker waits for an async
          #   webhook response before returning "Submitted" to the LLM. If unset, the platform
          #   default (currently 300ms) is used.
          #
          #   @return [Integer, nil]
          optional :async_timeout_ms, Integer

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

          # @!attribute messages
          #   Filler messages spoken while a synchronous webhook request is in progress.
          #   `request_start` messages are spoken immediately when the request begins.
          #   `request_response_delayed` messages are spoken after `timing_ms` has elapsed
          #   only if the webhook response is still pending. Filler messages are not used for
          #   asynchronous webhooks.
          #
          #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage>, nil]
          optional :messages,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message] }

          # @!attribute http_method
          #   The HTTP method to be used when calling the external tool.
          #
          #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method, nil]
          optional :http_method,
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

          # @!attribute preset_body_fields
          #   Body fields supplied by the assistant configuration rather than by the model.
          #   They are never advertised in the tool definition, so the LLM can neither see nor
          #   set them, and they take precedence over a `body_parameters` value of the same
          #   name. Values support mustache templating, so they can hold dynamic variables
          #   (`{{customer_id}}`) and integration secrets
          #   (`{{#integration_secret}}my-secret{{/integration_secret}}`). Not sent on `GET`
          #   requests, which carry no body.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :preset_body_fields, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute preset_query_params
          #   Query string parameters supplied by the assistant configuration rather than by
          #   the model. They are never advertised in the tool definition, so the LLM can
          #   neither see nor set them, and they take precedence over a `query_parameters`
          #   value of the same name. Values support mustache templating, so they can hold
          #   dynamic variables (`{{telnyx_end_user_target}}`) and integration secrets
          #   (`{{#integration_secret}}my-secret{{/integration_secret}}`). Unlike values
          #   templated directly into the `url`, these are percent-encoded, so a value such as
          #   `+15551234567` survives the round trip.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :preset_query_params, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

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

          # @!attribute store_fields_as_variables
          #   A list of mappings that extract values from the webhook response and store them
          #   as dynamic variables. Each mapping specifies a dynamic variable name and a
          #   dot-notation path to the value in the response body.
          #
          #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable>, nil]
          optional :store_fields_as_variables,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable] }

          # @!attribute timeout_ms
          #   The maximum number of milliseconds to wait for the webhook to respond. Only
          #   applicable when async is false.
          #
          #   @return [Integer, nil]
          optional :timeout_ms, Integer

          # @!method initialize(description:, name:, url:, async: nil, async_timeout_ms: nil, body_parameters: nil, headers: nil, messages: nil, http_method: nil, path_parameters: nil, preset_body_fields: nil, preset_query_params: nil, query_parameters: nil, store_fields_as_variables: nil, timeout_ms: nil)
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
          #   @param async_timeout_ms [Integer] Maximum time in milliseconds that the conversation worker waits for an async web
          #
          #   @param body_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters] The body parameters the webhook tool accepts, described as a JSON Schema object.
          #
          #   @param headers [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header>] The headers to be sent to the external tool.
          #
          #   @param messages [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage>] Filler messages spoken while a synchronous webhook request is in progress. `requ
          #
          #   @param http_method [Symbol, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method] The HTTP method to be used when calling the external tool.
          #
          #   @param path_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters] The path parameters the webhook tool accepts, described as a JSON Schema object.
          #
          #   @param preset_body_fields [Hash{Symbol=>Object}] Body fields supplied by the assistant configuration rather than by the model. Th
          #
          #   @param preset_query_params [Hash{Symbol=>Object}] Query string parameters supplied by the assistant configuration rather than by t
          #
          #   @param query_parameters [Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters] The query parameters the webhook tool accepts, described as a JSON Schema object
          #
          #   @param store_fields_as_variables [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable>] A list of mappings that extract values from the webhook response and store them
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

          module Message
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage }

            variant -> { Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage }

            class WebhookToolRequestStartMessage < Telnyx::Internal::Type::BaseModel
              # @!attribute content
              #   The text the assistant speaks.
              #
              #   @return [String]
              required :content, String

              # @!attribute type
              #   Speak the filler message immediately when the webhook request begins.
              #
              #   @return [Symbol, :request_start]
              required :type, const: :request_start

              # @!attribute timing_ms
              #   An optional delay value. This value is ignored for `request_start` messages.
              #
              #   @return [Integer, nil]
              optional :timing_ms, Integer

              # @!method initialize(content:, timing_ms: nil, type: :request_start)
              #   @param content [String] The text the assistant speaks.
              #
              #   @param timing_ms [Integer] An optional delay value. This value is ignored for `request_start` messages.
              #
              #   @param type [Symbol, :request_start] Speak the filler message immediately when the webhook request begins.
            end

            class WebhookToolRequestResponseDelayedMessage < Telnyx::Internal::Type::BaseModel
              # @!attribute content
              #   The text the assistant speaks.
              #
              #   @return [String]
              required :content, String

              # @!attribute timing_ms
              #   The delay in milliseconds from the start of the webhook request.
              #
              #   @return [Integer]
              required :timing_ms, Integer

              # @!attribute type
              #   Speak the filler message after the configured delay if the webhook response is
              #   still pending.
              #
              #   @return [Symbol, :request_response_delayed]
              required :type, const: :request_response_delayed

              # @!method initialize(content:, timing_ms:, type: :request_response_delayed)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage}
              #   for more details.
              #
              #   @param content [String] The text the assistant speaks.
              #
              #   @param timing_ms [Integer] The delay in milliseconds from the start of the webhook request.
              #
              #   @param type [Symbol, :request_response_delayed] Speak the filler message after the configured delay if the webhook response is s
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage, Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage)]
          end

          # The HTTP method to be used when calling the external tool.
          #
          # @see Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook#http_method
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

          class StoreFieldsAsVariable < Telnyx::Internal::Type::BaseModel
            # @!attribute name
            #   The name of the dynamic variable to store the extracted value in.
            #
            #   @return [String]
            required :name, String

            # @!attribute value_path
            #   A dot-notation path to the value in the webhook response body (e.g.
            #   'customer.name' or 'id').
            #
            #   @return [String]
            required :value_path, String

            # @!method initialize(name:, value_path:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable}
            #   for more details.
            #
            #   @param name [String] The name of the dynamic variable to store the extracted value in.
            #
            #   @param value_path [String] A dot-notation path to the value in the webhook response body (e.g. 'customer.na
          end
        end
      end
    end
  end
end
