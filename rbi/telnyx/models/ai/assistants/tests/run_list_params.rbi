# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          class RunListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::Tests::RunListParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            sig do
              returns(
                T.nilable(Telnyx::AI::Assistants::Tests::RunListParams::Page)
              )
            end
            attr_reader :page

            sig do
              params(
                page: Telnyx::AI::Assistants::Tests::RunListParams::Page::OrHash
              ).void
            end
            attr_writer :page

            # Filter runs by execution status (pending, running, completed, failed, timeout)
            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig do
              params(
                page:
                  Telnyx::AI::Assistants::Tests::RunListParams::Page::OrHash,
                status: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Consolidated page parameter (deepObject style). Originally: page[size],
              # page[number]
              page: nil,
              # Filter runs by execution status (pending, running, completed, failed, timeout)
              status: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  page: Telnyx::AI::Assistants::Tests::RunListParams::Page,
                  status: String,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            class Page < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::Tests::RunListParams::Page,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Page number to retrieve (1-based indexing)
              sig { returns(T.nilable(Integer)) }
              attr_reader :number

              sig { params(number: Integer).void }
              attr_writer :number

              # Number of test runs to return per page (1-100)
              sig { returns(T.nilable(Integer)) }
              attr_reader :size

              sig { params(size: Integer).void }
              attr_writer :size

              # Consolidated page parameter (deepObject style). Originally: page[size],
              # page[number]
              sig do
                params(number: Integer, size: Integer).returns(T.attached_class)
              end
              def self.new(
                # Page number to retrieve (1-based indexing)
                number: nil,
                # Number of test runs to return per page (1-100)
                size: nil
              )
              end

              sig { override.returns({ number: Integer, size: Integer }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
