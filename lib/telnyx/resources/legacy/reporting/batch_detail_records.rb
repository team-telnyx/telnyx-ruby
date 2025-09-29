# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          # @return [Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging]
          attr_reader :messaging

          # @return [Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText]
          attr_reader :speech_to_text

          # @return [Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice]
          attr_reader :voice

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @messaging = Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging.new(client: client)
            @speech_to_text =
              Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText.new(client: client)
            @voice = Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice.new(client: client)
          end
        end
      end
    end
  end
end
