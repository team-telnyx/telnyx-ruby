# typed: strong

module Telnyx
  module Models
    module AI
      class WebhookTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::WebhookTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::WebhookTool::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(Telnyx::AI::WebhookTool::Webhook) }
        attr_reader :webhook

        sig { params(webhook: Telnyx::AI::WebhookTool::Webhook::OrHash).void }
        attr_writer :webhook

        sig do
          params(
            type: Telnyx::AI::WebhookTool::Type::OrSymbol,
            webhook: Telnyx::AI::WebhookTool::Webhook::OrHash
          ).returns(T.attached_class)
        end
        def self.new(type:, webhook:)
        end

        sig do
          override.returns(
            {
              type: Telnyx::AI::WebhookTool::Type::OrSymbol,
              webhook: Telnyx::AI::WebhookTool::Webhook
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::WebhookTool::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBHOOK = T.let(:webhook, Telnyx::AI::WebhookTool::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::WebhookTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Webhook < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::WebhookTool::Webhook, Telnyx::Internal::AnyHash)
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
            returns(T.nilable(Telnyx::AI::WebhookTool::Webhook::BodyParameters))
          end
          attr_reader :body_parameters

          sig do
            params(
              body_parameters:
                Telnyx::AI::WebhookTool::Webhook::BodyParameters::OrHash
            ).void
          end
          attr_writer :body_parameters

          # The headers to be sent to the external tool.
          sig do
            returns(
              T.nilable(T::Array[Telnyx::AI::WebhookTool::Webhook::Header])
            )
          end
          attr_reader :headers

          sig do
            params(
              headers:
                T::Array[Telnyx::AI::WebhookTool::Webhook::Header::OrHash]
            ).void
          end
          attr_writer :headers

          # The HTTP method to be used when calling the external tool.
          sig do
            returns(
              T.nilable(Telnyx::AI::WebhookTool::Webhook::Method::OrSymbol)
            )
          end
          attr_reader :method_

          sig do
            params(
              method_: Telnyx::AI::WebhookTool::Webhook::Method::OrSymbol
            ).void
          end
          attr_writer :method_

          # The path parameters the webhook tool accepts, described as a JSON Schema object.
          # These parameters will be passed to the webhook as the path of the request if the
          # URL contains a placeholder for a value. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          sig do
            returns(T.nilable(Telnyx::AI::WebhookTool::Webhook::PathParameters))
          end
          attr_reader :path_parameters

          sig do
            params(
              path_parameters:
                Telnyx::AI::WebhookTool::Webhook::PathParameters::OrHash
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
              T.nilable(Telnyx::AI::WebhookTool::Webhook::QueryParameters)
            )
          end
          attr_reader :query_parameters

          sig do
            params(
              query_parameters:
                Telnyx::AI::WebhookTool::Webhook::QueryParameters::OrHash
            ).void
          end
          attr_writer :query_parameters

          sig do
            params(
              description: String,
              name: String,
              url: String,
              body_parameters:
                Telnyx::AI::WebhookTool::Webhook::BodyParameters::OrHash,
              headers:
                T::Array[Telnyx::AI::WebhookTool::Webhook::Header::OrHash],
              method_: Telnyx::AI::WebhookTool::Webhook::Method::OrSymbol,
              path_parameters:
                Telnyx::AI::WebhookTool::Webhook::PathParameters::OrHash,
              query_parameters:
                Telnyx::AI::WebhookTool::Webhook::QueryParameters::OrHash
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
                  Telnyx::AI::WebhookTool::Webhook::BodyParameters,
                headers: T::Array[Telnyx::AI::WebhookTool::Webhook::Header],
                method_: Telnyx::AI::WebhookTool::Webhook::Method::OrSymbol,
                path_parameters:
                  Telnyx::AI::WebhookTool::Webhook::PathParameters,
                query_parameters:
                  Telnyx::AI::WebhookTool::Webhook::QueryParameters
              }
            )
          end
          def to_hash
          end

          class BodyParameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::WebhookTool::Webhook::BodyParameters,
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
                  Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type::OrSymbol
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
                  Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type::OrSymbol
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
                    Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type::OrSymbol
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
                    Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OBJECT =
                T.let(
                  :object,
                  Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::WebhookTool::Webhook::BodyParameters::Type::TaggedSymbol
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
                  Telnyx::AI::WebhookTool::Webhook::Header,
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
                T.all(Symbol, Telnyx::AI::WebhookTool::Webhook::Method)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::AI::WebhookTool::Webhook::Method::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::AI::WebhookTool::Webhook::Method::TaggedSymbol
              )
            PUT =
              T.let(
                :PUT,
                Telnyx::AI::WebhookTool::Webhook::Method::TaggedSymbol
              )
            DELETE =
              T.let(
                :DELETE,
                Telnyx::AI::WebhookTool::Webhook::Method::TaggedSymbol
              )
            PATCH =
              T.let(
                :PATCH,
                Telnyx::AI::WebhookTool::Webhook::Method::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Telnyx::AI::WebhookTool::Webhook::Method::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          class PathParameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::WebhookTool::Webhook::PathParameters,
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
                  Telnyx::AI::WebhookTool::Webhook::PathParameters::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::WebhookTool::Webhook::PathParameters::Type::OrSymbol
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
                  Telnyx::AI::WebhookTool::Webhook::PathParameters::Type::OrSymbol
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
                    Telnyx::AI::WebhookTool::Webhook::PathParameters::Type::OrSymbol
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
                    Telnyx::AI::WebhookTool::Webhook::PathParameters::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OBJECT =
                T.let(
                  :object,
                  Telnyx::AI::WebhookTool::Webhook::PathParameters::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::WebhookTool::Webhook::PathParameters::Type::TaggedSymbol
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
                  Telnyx::AI::WebhookTool::Webhook::QueryParameters,
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
                  Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type::OrSymbol
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
                  Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type::OrSymbol
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
                    Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type::OrSymbol
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
                    Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OBJECT =
                T.let(
                  :object,
                  Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::WebhookTool::Webhook::QueryParameters::Type::TaggedSymbol
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
end
