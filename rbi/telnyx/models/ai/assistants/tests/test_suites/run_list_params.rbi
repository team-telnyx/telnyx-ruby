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

              sig { returns(T.nilable(Integer)) }
              attr_reader :page_number

              sig { params(page_number: Integer).void }
              attr_writer :page_number

              sig { returns(T.nilable(Integer)) }
              attr_reader :page_size

              sig { params(page_size: Integer).void }
              attr_writer :page_size

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
                  page_number: Integer,
                  page_size: Integer,
                  status: String,
                  test_suite_run_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                page_number: nil,
                page_size: nil,
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
                    page_number: Integer,
                    page_size: Integer,
                    status: String,
                    test_suite_run_id: String,
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
