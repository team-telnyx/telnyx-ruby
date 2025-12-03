# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            class RunListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::Tests::TestSuites::RunListParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Consolidated page parameter (deepObject style). Originally: page[size],
              # page[number]
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page
                  )
                )
              end
              attr_reader :page

              sig do
                params(
                  page:
                    Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page::OrHash
                ).void
              end
              attr_writer :page

              # Filter runs by execution status (pending, running, completed, failed, timeout)
              sig { returns(T.nilable(String)) }
              attr_reader :status

              sig { params(status: String).void }
              attr_writer :status

              # Filter runs by specific suite execution batch ID
              sig { returns(T.nilable(String)) }
              attr_reader :test_suite_run_id

              sig { params(test_suite_run_id: String).void }
              attr_writer :test_suite_run_id

              sig do
                params(
                  page:
                    Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page::OrHash,
                  status: String,
                  test_suite_run_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Consolidated page parameter (deepObject style). Originally: page[size],
                # page[number]
                page: nil,
                # Filter runs by execution status (pending, running, completed, failed, timeout)
                status: nil,
                # Filter runs by specific suite execution batch ID
                test_suite_run_id: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    page:
                      Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page,
                    status: String,
                    test_suite_run_id: String,
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
                      Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page,
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
                  params(number: Integer, size: Integer).returns(
                    T.attached_class
                  )
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
end
