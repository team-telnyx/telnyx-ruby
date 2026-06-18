# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          module TwimlRecordingChannels
            extend Telnyx::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Telnyx::Texml::Accounts::Calls::TwimlRecordingChannels
                )
              end
            OrInteger = T.type_alias { Integer }

            CHANNEL_1 =
              T.let(
                1,
                Telnyx::Texml::Accounts::Calls::TwimlRecordingChannels::TaggedInteger
              )
            CHANNEL_2 =
              T.let(
                2,
                Telnyx::Texml::Accounts::Calls::TwimlRecordingChannels::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::Calls::TwimlRecordingChannels::TaggedInteger
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
