# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # The type of Telnyx data attached as a source. `bucket` requires an additional
        # `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
        # `bucket` attach but are not yet searchable (Coming soon).
        module SourceType
          extend Telnyx::Internal::Type::Enum

          VOICE = :voice
          MEETING_BOT = :meeting_bot
          MESSAGE = :message
          BUCKET = :bucket

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
