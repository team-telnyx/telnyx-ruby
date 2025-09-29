# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          sig do
            returns(
              Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging
            )
          end
          attr_reader :messaging

          sig do
            returns(
              Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText
            )
          end
          attr_reader :speech_to_text

          sig do
            returns(
              Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice
            )
          end
          attr_reader :voice

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
