# typed: strong

module Telnyx
  module Models
    module Calls
      class InterruptionSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::InterruptionSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # When true, allows users to interrupt the assistant while speaking
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable

        sig { params(enable: T::Boolean).void }
        attr_writer :enable

        # Settings for handling user interruptions during assistant speech
        sig { params(enable: T::Boolean).returns(T.attached_class) }
        def self.new(
          # When true, allows users to interrupt the assistant while speaking
          enable: nil
        )
        end

        sig { override.returns({ enable: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
