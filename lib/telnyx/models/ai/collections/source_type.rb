# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # The type of Telnyx data attached as a source. `bucket` requires an additional
        # `bucket_id`. `voice`, `meeting_bot`, `message`, `email`, and `whatsapp` are
        # searchable today; `bucket` attaches but is not yet searchable (Coming soon).
        module SourceType
          extend Telnyx::Internal::Type::Enum

          VOICE = :voice
          MEETING_BOT = :meeting_bot
          MESSAGE = :message
          BUCKET = :bucket
          EMAIL = :email
          WHATSAPP = :whatsapp

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
