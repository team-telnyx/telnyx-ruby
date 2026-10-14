# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class AIGatewayResourcesPageMeta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::AIGatewayResourcesPageMeta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig { returns(Integer) }
        attr_accessor :page_number

        sig { returns(Integer) }
        attr_accessor :page_size

        sig { returns(String) }
        attr_accessor :snapshot

        sig do
          params(
            has_more: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            snapshot: String
          ).returns(T.attached_class)
        end
        def self.new(has_more:, page_number:, page_size:, snapshot:)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              page_number: Integer,
              page_size: Integer,
              snapshot: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
