# typed: strong

module Telnyx
  module Models
    class MeetingSessionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSessionUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Updated display name for the bot.
      sig { returns(T.nilable(String)) }
      attr_reader :bot_name

      sig { params(bot_name: String).void }
      attr_writer :bot_name

      # ISO-8601 timestamp for the bot to join. May be updated to reschedule.
      sig { returns(T.nilable(Time)) }
      attr_reader :join_at

      sig { params(join_at: Time).void }
      attr_writer :join_at

      sig do
        params(
          id: String,
          bot_name: String,
          join_at: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Updated display name for the bot.
        bot_name: nil,
        # ISO-8601 timestamp for the bot to join. May be updated to reschedule.
        join_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bot_name: String,
            join_at: Time,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
