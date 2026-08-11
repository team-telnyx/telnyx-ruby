# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentTestingConfiguration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rcs::AgentTestingConfiguration,
              Telnyx::Internal::AnyHash
            )
          end

        # A publicly accessible test video or evidence URL.
        sig { returns(String) }
        attr_accessor :test_url

        sig { returns(T.nilable(String)) }
        attr_accessor :additional_information

        sig { returns(T.nilable(String)) }
        attr_accessor :message_id

        sig do
          params(
            test_url: String,
            additional_information: T.nilable(String),
            message_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A publicly accessible test video or evidence URL.
          test_url:,
          additional_information: nil,
          message_id: nil
        )
        end

        sig do
          override.returns(
            {
              test_url: String,
              additional_information: T.nilable(String),
              message_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
