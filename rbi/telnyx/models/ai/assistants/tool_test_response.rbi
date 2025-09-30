# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ToolTestResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Assistants::ToolTestResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Response model for webhook tool test results
          sig do
            returns(Telnyx::Models::AI::Assistants::ToolTestResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Assistants::ToolTestResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response model for webhook tool test results
          sig do
            params(
              data:
                Telnyx::Models::AI::Assistants::ToolTestResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Response model for webhook tool test results
            data:
          )
          end

          sig do
            override.returns(
              { data: Telnyx::Models::AI::Assistants::ToolTestResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Assistants::ToolTestResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :content_type

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :request

            sig { returns(String) }
            attr_accessor :response

            sig { returns(Integer) }
            attr_accessor :status_code

            sig { returns(T::Boolean) }
            attr_accessor :success

            # Response model for webhook tool test results
            sig do
              params(
                content_type: String,
                request: T::Hash[Symbol, T.anything],
                response: String,
                status_code: Integer,
                success: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              content_type:,
              request:,
              response:,
              status_code:,
              success:
            )
            end

            sig do
              override.returns(
                {
                  content_type: String,
                  request: T::Hash[Symbol, T.anything],
                  response: String,
                  status_code: Integer,
                  success: T::Boolean
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
