# typed: strong

module Telnyx
  module Models
    module Porting
      class LoaConfigurationUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Porting::LoaConfigurationUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Porting::PortingLoaConfiguration)) }
        attr_reader :data

        sig do
          params(data: Telnyx::Porting::PortingLoaConfiguration::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Porting::PortingLoaConfiguration::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::Porting::PortingLoaConfiguration })
        end
        def to_hash
        end
      end
    end
  end
end
