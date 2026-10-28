# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class AiagentListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::AiagentListParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Page number (1-based).
              sig { returns(T.nilable(Integer)) }
              attr_reader :page

              sig { params(page: Integer).void }
              attr_writer :page

              # Number of results per page.
              sig { returns(T.nilable(Integer)) }
              attr_reader :page_size

              sig { params(page_size: Integer).void }
              attr_writer :page_size

              sig do
                params(
                  page: Integer,
                  page_size: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Page number (1-based).
                page: nil,
                # Number of results per page.
                page_size: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    page: Integer,
                    page_size: Integer,
                    request_options: Telnyx::RequestOptions
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
end
