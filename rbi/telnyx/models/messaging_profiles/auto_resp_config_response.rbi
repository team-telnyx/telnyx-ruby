# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutoRespConfigResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingProfiles::AutoRespConfigResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::MessagingProfiles::AutoRespConfig) }
        attr_reader :data

        sig do
          params(data: Telnyx::MessagingProfiles::AutoRespConfig::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::MessagingProfiles::AutoRespConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns({ data: Telnyx::MessagingProfiles::AutoRespConfig })
        end
        def to_hash
        end
      end
    end
  end
end
