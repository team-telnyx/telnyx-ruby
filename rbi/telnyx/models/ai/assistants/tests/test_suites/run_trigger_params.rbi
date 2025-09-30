# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            class RunTriggerParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::Tests::TestSuites::RunTriggerParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Optional assistant version ID to use for all test runs in this suite. If
              # provided, the version must exist or a 400 error will be returned. If not
              # provided, test will run on main version
              sig { returns(T.nilable(String)) }
              attr_reader :destination_version_id

              sig { params(destination_version_id: String).void }
              attr_writer :destination_version_id

              sig do
                params(
                  destination_version_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Optional assistant version ID to use for all test runs in this suite. If
                # provided, the version must exist or a 400 error will be returned. If not
                # provided, test will run on main version
                destination_version_id: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    destination_version_id: String,
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
