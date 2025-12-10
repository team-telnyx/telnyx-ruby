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

            sig do
              params(
                page_number: Integer,
                page_size: Integer,
                status: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              page_number: nil,
              page_size: nil,
              # Filter runs by execution status (pending, running, completed, failed, timeout)
              status: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  page_number: Integer,
                  page_size: Integer,
                  status: String,
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
