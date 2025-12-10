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

        # The body parameters the webhook tool accepts, described as a JSON Schema object.
        # These parameters will be passed to the webhook as the body of the request. See
        # the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
        # for documentation about the format
        sig do
          returns(
            T.nilable(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters
            )
          )
        end
        attr_reader :body_parameters

        sig do
          params(
            body_parameters:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::OrHash
          ).void
        end
        attr_writer :body_parameters

        # The headers to be sent to the external tool.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::AI::InferenceEmbeddingWebhookToolParams::Header]
            )
          )
        end
        attr_reader :headers

        sig do
          params(
            headers:
              T::Array[
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Header::OrHash
              ]
          ).void
        end
        attr_writer :headers

        # The HTTP method to be used when calling the external tool.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::OrSymbol
            )
          )
        end
        attr_reader :method_

        sig do
          params(
            method_:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::OrSymbol
          ).void
        end
        attr_writer :method_

        # The path parameters the webhook tool accepts, described as a JSON Schema object.
        # These parameters will be passed to the webhook as the path of the request if the
        # URL contains a placeholder for a value. See the
        # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
        # documentation about the format
        sig do
          returns(
            T.nilable(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters
            )
          )
        end
        attr_reader :path_parameters

        sig do
          params(
            path_parameters:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::OrHash
          ).void
        end
        attr_writer :path_parameters

        # The query parameters the webhook tool accepts, described as a JSON Schema
        # object. These parameters will be passed to the webhook as the query of the
        # request. See the
        # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
        # documentation about the format
        sig do
          returns(
            T.nilable(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters
            )
          )
        end
        attr_reader :query_parameters

        sig do
          params(
            query_parameters:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::OrHash
          ).void
        end
        attr_writer :query_parameters

        sig do
          params(
            description: String,
            name: String,
            url: String,
            body_parameters:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::OrHash,
            headers:
              T::Array[
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Header::OrHash
              ],
            method_:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::OrSymbol,
            path_parameters:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::OrHash,
            query_parameters:
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::OrHash
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
          # The body parameters the webhook tool accepts, described as a JSON Schema object.
          # These parameters will be passed to the webhook as the body of the request. See
          # the [JSON Schema reference](https://json-schema.org/understanding-json-schema)
          # for documentation about the format
          body_parameters: nil,
          # The headers to be sent to the external tool.
          headers: nil,
          # The HTTP method to be used when calling the external tool.
          method_: nil,
          # The path parameters the webhook tool accepts, described as a JSON Schema object.
          # These parameters will be passed to the webhook as the path of the request if the
          # URL contains a placeholder for a value. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          path_parameters: nil,
          # The query parameters the webhook tool accepts, described as a JSON Schema
          # object. These parameters will be passed to the webhook as the query of the
          # request. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          query_parameters: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              name: String,
              url: String,
              body_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters,
              headers:
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::Header
                ],
              method_:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::OrSymbol,
              path_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters,
              query_parameters:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters
            }
          )
        end
        def to_hash
        end

        class BodyParameters < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters,
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type::OrSymbol
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type::OrSymbol
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
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type::OrSymbol
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
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OBJECT =
              T.let(
                :object,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::BodyParameters::Type::TaggedSymbol
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Header,
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

          sig { params(name: String, value: String).returns(T.attached_class) }
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

        # The HTTP method to be used when calling the external tool.
        module Method
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(
              :GET,
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::TaggedSymbol
            )
          PUT =
            T.let(
              :PUT,
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::TaggedSymbol
            )
          PATCH =
            T.let(
              :PATCH,
              Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::Method::TaggedSymbol
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters,
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type::OrSymbol
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type::OrSymbol
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
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type::OrSymbol
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
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OBJECT =
              T.let(
                :object,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::PathParameters::Type::TaggedSymbol
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters,
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type::OrSymbol
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
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type::OrSymbol
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
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type::OrSymbol
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
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OBJECT =
              T.let(
                :object,
                Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::QueryParameters::Type::TaggedSymbol
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
