# typed: strong

module Telnyx
  module Models
    module Calls
      module TranscriptionEngineDeepgramConfig
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Calls::DeepgramNova2Config,
              Telnyx::Calls::DeepgramNova3Config
            )
          end

        sig do
          override.returns(
            T::Array[Telnyx::Calls::TranscriptionEngineDeepgramConfig::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
