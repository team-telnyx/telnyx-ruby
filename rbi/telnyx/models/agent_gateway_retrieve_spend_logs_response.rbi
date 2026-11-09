# typed: strong

module Telnyx
  module Models
    class AgentGatewayRetrieveSpendLogsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data]
        )
      end
      attr_accessor :data

      sig do
        returns(Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta)
      end
      attr_reader :meta

      sig do
        params(
          meta:
            Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data::OrHash
            ],
          meta:
            Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data
              ],
            meta: Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The request's ID.
        sig { returns(String) }
        attr_accessor :id

        # Output tokens, reasoning included.
        sig { returns(Integer) }
        attr_accessor :completion_tokens

        # How long the request took, in milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration_ms

        # When the request ended.
        sig { returns(T.nilable(Time)) }
        attr_accessor :ended_at

        # The key the request used.
        sig { returns(T.nilable(String)) }
        attr_accessor :key_id

        # The Telnyx Inference model that answered, such as `zai-org/GLM-5.3-Flash`. For
        # an MCP tool request, `MCP: ` and the tool's name.
        sig { returns(T.nilable(String)) }
        attr_accessor :model

        # The request type. `acompletion` is a chat completion, `aresponses` a response,
        # `anthropic_messages` a message, `call_mcp_tool` an MCP tool request, and
        # `list_mcp_tools` an MCP tool list.
        sig { returns(String) }
        attr_accessor :operation

        # Input tokens.
        sig { returns(Integer) }
        attr_accessor :prompt_tokens

        # What the request cost, in USD, with its tokens at Telnyx Inference prices.
        sig { returns(Float) }
        attr_accessor :spend

        # When the request started.
        sig { returns(Time) }
        attr_accessor :started_at

        # `success` or `failure`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status

        # The key's team.
        sig { returns(T.nilable(String)) }
        attr_accessor :team_id

        # Input and output tokens.
        sig { returns(Integer) }
        attr_accessor :total_tokens

        # One request the instance served.
        sig do
          params(
            id: String,
            completion_tokens: Integer,
            duration_ms: T.nilable(Integer),
            ended_at: T.nilable(Time),
            key_id: T.nilable(String),
            model: T.nilable(String),
            operation: String,
            prompt_tokens: Integer,
            spend: Float,
            started_at: Time,
            status: T.nilable(String),
            team_id: T.nilable(String),
            total_tokens: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The request's ID.
          id:,
          # Output tokens, reasoning included.
          completion_tokens:,
          # How long the request took, in milliseconds.
          duration_ms:,
          # When the request ended.
          ended_at:,
          # The key the request used.
          key_id:,
          # The Telnyx Inference model that answered, such as `zai-org/GLM-5.3-Flash`. For
          # an MCP tool request, `MCP: ` and the tool's name.
          model:,
          # The request type. `acompletion` is a chat completion, `aresponses` a response,
          # `anthropic_messages` a message, `call_mcp_tool` an MCP tool request, and
          # `list_mcp_tools` an MCP tool list.
          operation:,
          # Input tokens.
          prompt_tokens:,
          # What the request cost, in USD, with its tokens at Telnyx Inference prices.
          spend:,
          # When the request started.
          started_at:,
          # `success` or `failure`.
          status:,
          # The key's team.
          team_id:,
          # Input and output tokens.
          total_tokens:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              completion_tokens: Integer,
              duration_ms: T.nilable(Integer),
              ended_at: T.nilable(Time),
              key_id: T.nilable(String),
              model: T.nilable(String),
              operation: String,
              prompt_tokens: Integer,
              spend: Float,
              started_at: Time,
              status: T.nilable(String),
              team_id: T.nilable(String),
              total_tokens: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # The page returned, counting from 1.
        sig { returns(Integer) }
        attr_accessor :page_number

        # Results per page.
        sig { returns(Integer) }
        attr_accessor :page_size

        # Pages that can be requested; 0 when nothing matched.
        sig { returns(Integer) }
        attr_accessor :total_pages

        # Results across every page.
        sig { returns(Integer) }
        attr_accessor :total_results

        # `true` when the window holds more than 10,000 rows. The two totals are then
        # lower bounds: narrow the window, or page until a page comes back empty.
        sig { returns(T::Boolean) }
        attr_accessor :total_results_capped

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer,
            total_results_capped: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The page returned, counting from 1.
          page_number:,
          # Results per page.
          page_size:,
          # Pages that can be requested; 0 when nothing matched.
          total_pages:,
          # Results across every page.
          total_results:,
          # `true` when the window holds more than 10,000 rows. The two totals are then
          # lower bounds: narrow the window, or page until a page comes back empty.
          total_results_capped:
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer,
              total_results_capped: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
