# typed: strong

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingWebhookToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          returns(Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook)
        end
        attr_reader :webhook

        sig do
          params(
            webhook:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::OrHash
          ).void
        end
        attr_writer :webhook

        sig do
          params(
            type:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type::OrSymbol,
            webhook:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::OrHash
          ).returns(T.attached_class)
        end
        def self.new(type:, webhook:)
        end

        sig do
          override.returns(
            {
              type:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type::OrSymbol,
              webhook: Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Webhook < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook,
                Telnyx::Internal::AnyHash
              )
            end

          # The description of the tool.
          sig { returns(String) }
          attr_accessor :description

          # The name of the tool.
          sig { returns(String) }
          attr_accessor :name

          # The URL of the external tool to be called. This URL is going to be used by the
          # assistant. The URL can be templated like: `https://example.com/api/v1/{id}`,
          # where `{id}` is a placeholder for a value that will be provided by the assistant
          # if `path_parameters` are provided with the `id` attribute.
          sig { returns(String) }
          attr_accessor :url

          # If async, the assistant will move forward without waiting for your server to
          # respond.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :async

          sig { params(async: T::Boolean).void }
          attr_writer :async

          # Maximum time in milliseconds that the conversation worker waits for an async
          # webhook response before returning "Submitted" to the LLM. If unset, the platform
          # default (currently 300ms) is used.
          sig { returns(T.nilable(Integer)) }
          attr_reader :async_timeout_ms

          sig { params(async_timeout_ms: Integer).void }
          attr_writer :async_timeout_ms

          # The body parameters the webhook tool accepts, described as a JSON Schema object.
          # These parameters will be passed to the webhook as the body of the request. See
          # the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
          # for documentation about the format
          sig do
            returns(
              T.nilable(
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters
              )
            )
          end
          attr_reader :body_parameters

          sig do
            params(
              body_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::OrHash
            ).void
          end
          attr_writer :body_parameters

          # The headers to be sent to the external tool.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header
                ]
              )
            )
          end
          attr_reader :headers

          sig do
            params(
              headers:
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header::OrHash
                ]
            ).void
          end
          attr_writer :headers

          # Filler messages spoken while a synchronous webhook request is in progress.
          # `request_start` messages are spoken immediately when the request begins.
          # `request_response_delayed` messages are spoken after `timing_ms` has elapsed
          # only if the webhook response is still pending. Filler messages are not used for
          # asynchronous webhooks.
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage,
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage
                  )
                ]
              )
            )
          end
          attr_reader :messages

          sig do
            params(
              messages:
                T::Array[
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage::OrHash,
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage::OrHash
                  )
                ]
            ).void
          end
          attr_writer :messages

          # The HTTP method to be used when calling the external tool.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::OrSymbol
              )
            )
          end
          attr_reader :http_method

          sig do
            params(
              http_method:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::OrSymbol
            ).void
          end
          attr_writer :http_method

          # The path parameters the webhook tool accepts, described as a JSON Schema object.
          # These parameters will be passed to the webhook as the path of the request if the
          # URL contains a placeholder for a value. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          sig do
            returns(
              T.nilable(
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters
              )
            )
          end
          attr_reader :path_parameters

          sig do
            params(
              path_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::OrHash
            ).void
          end
          attr_writer :path_parameters

          # Body fields supplied by the assistant configuration rather than by the model.
          # They are never advertised in the tool definition, so the LLM can neither see nor
          # set them, and they take precedence over a `body_parameters` value of the same
          # name. Values support mustache templating, so they can hold dynamic variables
          # (`{{customer_id}}`) and integration secrets
          # (`{{#integration_secret}}my-secret{{/integration_secret}}`). Not sent on `GET`
          # requests, which carry no body.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :preset_body_fields

          sig { params(preset_body_fields: T::Hash[Symbol, T.anything]).void }
          attr_writer :preset_body_fields

          # Query string parameters supplied by the assistant configuration rather than by
          # the model. They are never advertised in the tool definition, so the LLM can
          # neither see nor set them, and they take precedence over a `query_parameters`
          # value of the same name. Values support mustache templating, so they can hold
          # dynamic variables (`{{telnyx_end_user_target}}`) and integration secrets
          # (`{{#integration_secret}}my-secret{{/integration_secret}}`). Unlike values
          # templated directly into the `url`, these are percent-encoded, so a value such as
          # `+15551234567` survives the round trip.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :preset_query_params

          sig { params(preset_query_params: T::Hash[Symbol, T.anything]).void }
          attr_writer :preset_query_params

          # The query parameters the webhook tool accepts, described as a JSON Schema
          # object. These parameters will be passed to the webhook as the query of the
          # request. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          sig do
            returns(
              T.nilable(
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters
              )
            )
          end
          attr_reader :query_parameters

          sig do
            params(
              query_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::OrHash
            ).void
          end
          attr_writer :query_parameters

          # A list of mappings that extract values from the webhook response and store them
          # as dynamic variables. Each mapping specifies a dynamic variable name and a
          # dot-notation path to the value in the response body.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable
                ]
              )
            )
          end
          attr_reader :store_fields_as_variables

          sig do
            params(
              store_fields_as_variables:
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable::OrHash
                ]
            ).void
          end
          attr_writer :store_fields_as_variables

          # The maximum number of milliseconds to wait for the webhook to respond. Only
          # applicable when async is false.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timeout_ms

          sig { params(timeout_ms: Integer).void }
          attr_writer :timeout_ms

          sig do
            params(
              description: String,
              name: String,
              url: String,
              async: T::Boolean,
              async_timeout_ms: Integer,
              body_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::OrHash,
              headers:
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header::OrHash
                ],
              messages:
                T::Array[
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage::OrHash,
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage::OrHash
                  )
                ],
              http_method:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::OrSymbol,
              path_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::OrHash,
              preset_body_fields: T::Hash[Symbol, T.anything],
              preset_query_params: T::Hash[Symbol, T.anything],
              query_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::OrHash,
              store_fields_as_variables:
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable::OrHash
                ],
              timeout_ms: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The description of the tool.
            description:,
            # The name of the tool.
            name:,
            # The URL of the external tool to be called. This URL is going to be used by the
            # assistant. The URL can be templated like: `https://example.com/api/v1/{id}`,
            # where `{id}` is a placeholder for a value that will be provided by the assistant
            # if `path_parameters` are provided with the `id` attribute.
            url:,
            # If async, the assistant will move forward without waiting for your server to
            # respond.
            async: nil,
            # Maximum time in milliseconds that the conversation worker waits for an async
            # webhook response before returning "Submitted" to the LLM. If unset, the platform
            # default (currently 300ms) is used.
            async_timeout_ms: nil,
            # The body parameters the webhook tool accepts, described as a JSON Schema object.
            # These parameters will be passed to the webhook as the body of the request. See
            # the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
            # for documentation about the format
            body_parameters: nil,
            # The headers to be sent to the external tool.
            headers: nil,
            # Filler messages spoken while a synchronous webhook request is in progress.
            # `request_start` messages are spoken immediately when the request begins.
            # `request_response_delayed` messages are spoken after `timing_ms` has elapsed
            # only if the webhook response is still pending. Filler messages are not used for
            # asynchronous webhooks.
            messages: nil,
            # The HTTP method to be used when calling the external tool.
            http_method: nil,
            # The path parameters the webhook tool accepts, described as a JSON Schema object.
            # These parameters will be passed to the webhook as the path of the request if the
            # URL contains a placeholder for a value. See the
            # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
            # documentation about the format
            path_parameters: nil,
            # Body fields supplied by the assistant configuration rather than by the model.
            # They are never advertised in the tool definition, so the LLM can neither see nor
            # set them, and they take precedence over a `body_parameters` value of the same
            # name. Values support mustache templating, so they can hold dynamic variables
            # (`{{customer_id}}`) and integration secrets
            # (`{{#integration_secret}}my-secret{{/integration_secret}}`). Not sent on `GET`
            # requests, which carry no body.
            preset_body_fields: nil,
            # Query string parameters supplied by the assistant configuration rather than by
            # the model. They are never advertised in the tool definition, so the LLM can
            # neither see nor set them, and they take precedence over a `query_parameters`
            # value of the same name. Values support mustache templating, so they can hold
            # dynamic variables (`{{telnyx_end_user_target}}`) and integration secrets
            # (`{{#integration_secret}}my-secret{{/integration_secret}}`). Unlike values
            # templated directly into the `url`, these are percent-encoded, so a value such as
            # `+15551234567` survives the round trip.
            preset_query_params: nil,
            # The query parameters the webhook tool accepts, described as a JSON Schema
            # object. These parameters will be passed to the webhook as the query of the
            # request. See the
            # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
            # documentation about the format
            query_parameters: nil,
            # A list of mappings that extract values from the webhook response and store them
            # as dynamic variables. Each mapping specifies a dynamic variable name and a
            # dot-notation path to the value in the response body.
            store_fields_as_variables: nil,
            # The maximum number of milliseconds to wait for the webhook to respond. Only
            # applicable when async is false.
            timeout_ms: nil
          )
          end

          sig do
            override.returns(
              {
                description: String,
                name: String,
                url: String,
                async: T::Boolean,
                async_timeout_ms: Integer,
                body_parameters:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters,
                headers:
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header
                  ],
                messages:
                  T::Array[
                    T.any(
                      Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage,
                      Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage
                    )
                  ],
                http_method:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::OrSymbol,
                path_parameters:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters,
                preset_body_fields: T::Hash[Symbol, T.anything],
                preset_query_params: T::Hash[Symbol, T.anything],
                query_parameters:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters,
                store_fields_as_variables:
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable
                  ],
                timeout_ms: Integer
              }
            )
          end
          def to_hash
          end

          class BodyParameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters,
                  Telnyx::Internal::AnyHash
                )
              end

            # The properties of the body parameters.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :properties

            sig { params(properties: T::Hash[Symbol, T.anything]).void }
            attr_writer :properties

            # The required properties of the body parameters.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :required

            sig { params(required: T::Array[String]).void }
            attr_writer :required

            sig do
              returns(
                T.nilable(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # The body parameters the webhook tool accepts, described as a JSON Schema object.
            # These parameters will be passed to the webhook as the body of the request. See
            # the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
            # for documentation about the format
            sig do
              params(
                properties: T::Hash[Symbol, T.anything],
                required: T::Array[String],
                type:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The properties of the body parameters.
              properties: nil,
              # The required properties of the body parameters.
              required: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  properties: T::Hash[Symbol, T.anything],
                  required: T::Array[String],
                  type:
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OBJECT =
                T.let(
                  :object,
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::BodyParameters::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Header < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Header,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # The value of the header. Note that we support mustache templating for the value.
            # For example you can use
            # `Bearer {{#integration_secret}}test-secret{{/integration_secret}}` to pass the
            # value of the integration secret as the bearer token.
            # [Telnyx signature headers](https://developers.telnyx.com/docs/voice/programmable-voice/voice-api-webhooks)
            # will be automatically added to the request.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(name: String, value: String).returns(T.attached_class)
            end
            def self.new(
              name: nil,
              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `Bearer {{#integration_secret}}test-secret{{/integration_secret}}` to pass the
              # value of the integration secret as the bearer token.
              # [Telnyx signature headers](https://developers.telnyx.com/docs/voice/programmable-voice/voice-api-webhooks)
              # will be automatically added to the request.
              value: nil
            )
            end

            sig { override.returns({ name: String, value: String }) }
            def to_hash
            end
          end

          module Message
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage,
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage
                )
              end

            class WebhookToolRequestStartMessage < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestStartMessage,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The text the assistant speaks.
              sig { returns(String) }
              attr_accessor :content

              # Speak the filler message immediately when the webhook request begins.
              sig { returns(Symbol) }
              attr_accessor :type

              # An optional delay value. This value is ignored for `request_start` messages.
              sig { returns(T.nilable(Integer)) }
              attr_reader :timing_ms

              sig { params(timing_ms: Integer).void }
              attr_writer :timing_ms

              sig do
                params(
                  content: String,
                  timing_ms: Integer,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The text the assistant speaks.
                content:,
                # An optional delay value. This value is ignored for `request_start` messages.
                timing_ms: nil,
                # Speak the filler message immediately when the webhook request begins.
                type: :request_start
              )
              end

              sig do
                override.returns(
                  { content: String, type: Symbol, timing_ms: Integer }
                )
              end
              def to_hash
              end
            end

            class WebhookToolRequestResponseDelayedMessage < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::WebhookToolRequestResponseDelayedMessage,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The text the assistant speaks.
              sig { returns(String) }
              attr_accessor :content

              # The delay in milliseconds from the start of the webhook request.
              sig { returns(Integer) }
              attr_accessor :timing_ms

              # Speak the filler message after the configured delay if the webhook response is
              # still pending.
              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  content: String,
                  timing_ms: Integer,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The text the assistant speaks.
                content:,
                # The delay in milliseconds from the start of the webhook request.
                timing_ms:,
                # Speak the filler message after the configured delay if the webhook response is
                # still pending.
                type: :request_response_delayed
              )
              end

              sig do
                override.returns(
                  { content: String, timing_ms: Integer, type: Symbol }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Message::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # The HTTP method to be used when calling the external tool.
          module Method
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::TaggedSymbol
              )
            PUT =
              T.let(
                :PUT,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::TaggedSymbol
              )
            DELETE =
              T.let(
                :DELETE,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::TaggedSymbol
              )
            PATCH =
              T.let(
                :PATCH,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::Method::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PathParameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters,
                  Telnyx::Internal::AnyHash
                )
              end

            # The properties of the path parameters.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :properties

            sig { params(properties: T::Hash[Symbol, T.anything]).void }
            attr_writer :properties

            # The required properties of the path parameters.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :required

            sig { params(required: T::Array[String]).void }
            attr_writer :required

            sig do
              returns(
                T.nilable(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # The path parameters the webhook tool accepts, described as a JSON Schema object.
            # These parameters will be passed to the webhook as the path of the request if the
            # URL contains a placeholder for a value. See the
            # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
            # documentation about the format
            sig do
              params(
                properties: T::Hash[Symbol, T.anything],
                required: T::Array[String],
                type:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The properties of the path parameters.
              properties: nil,
              # The required properties of the path parameters.
              required: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  properties: T::Hash[Symbol, T.anything],
                  required: T::Array[String],
                  type:
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OBJECT =
                T.let(
                  :object,
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::PathParameters::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class QueryParameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters,
                  Telnyx::Internal::AnyHash
                )
              end

            # The properties of the query parameters.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :properties

            sig { params(properties: T::Hash[Symbol, T.anything]).void }
            attr_writer :properties

            # The required properties of the query parameters.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :required

            sig { params(required: T::Array[String]).void }
            attr_writer :required

            sig do
              returns(
                T.nilable(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type::OrSymbol
              ).void
            end
            attr_writer :type

            # The query parameters the webhook tool accepts, described as a JSON Schema
            # object. These parameters will be passed to the webhook as the query of the
            # request. See the
            # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
            # documentation about the format
            sig do
              params(
                properties: T::Hash[Symbol, T.anything],
                required: T::Array[String],
                type:
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The properties of the query parameters.
              properties: nil,
              # The required properties of the query parameters.
              required: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  properties: T::Hash[Symbol, T.anything],
                  required: T::Array[String],
                  type:
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OBJECT =
                T.let(
                  :object,
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::QueryParameters::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class StoreFieldsAsVariable < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Webhook::StoreFieldsAsVariable,
                  Telnyx::Internal::AnyHash
                )
              end

            # The name of the dynamic variable to store the extracted value in.
            sig { returns(String) }
            attr_accessor :name

            # A dot-notation path to the value in the webhook response body (e.g.
            # 'customer.name' or 'id').
            sig { returns(String) }
            attr_accessor :value_path

            sig do
              params(name: String, value_path: String).returns(T.attached_class)
            end
            def self.new(
              # The name of the dynamic variable to store the extracted value in.
              name:,
              # A dot-notation path to the value in the webhook response body (e.g.
              # 'customer.name' or 'id').
              value_path:
            )
            end

            sig { override.returns({ name: String, value_path: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
