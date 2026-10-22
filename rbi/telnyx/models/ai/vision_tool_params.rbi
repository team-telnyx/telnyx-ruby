# typed: strong

module Telnyx
  module Models
    module AI
      class VisionToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::VisionToolParams, Telnyx::Internal::AnyHash)
          end

        # Frames received longer ago than this many seconds are not shown to the
        # assistant, so it never describes a frozen or disconnected camera as live.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_frame_age_secs

        sig { params(max_frame_age_secs: Integer).void }
        attr_writer :max_frame_age_secs

        sig { params(max_frame_age_secs: Integer).returns(T.attached_class) }
        def self.new(
          # Frames received longer ago than this many seconds are not shown to the
          # assistant, so it never describes a frozen or disconnected camera as live.
          max_frame_age_secs: nil
        )
        end

        sig { override.returns({ max_frame_age_secs: Integer }) }
        def to_hash
        end
      end
    end
  end
end
