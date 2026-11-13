# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        # The type of Telnyx data attached as a source. `bucket` requires an additional
        # `bucket_id`. `voice`, `meeting_bot`, `message`, `email`, and `whatsapp` are
        # searchable today; `bucket` attaches but is not yet searchable (Coming soon).
        module SourceType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::Collections::SourceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VOICE =
            T.let(:voice, Telnyx::AI::Collections::SourceType::TaggedSymbol)
          MEETING_BOT =
            T.let(
              :meeting_bot,
              Telnyx::AI::Collections::SourceType::TaggedSymbol
            )
          MESSAGE =
            T.let(:message, Telnyx::AI::Collections::SourceType::TaggedSymbol)
          BUCKET =
            T.let(:bucket, Telnyx::AI::Collections::SourceType::TaggedSymbol)
          EMAIL =
            T.let(:email, Telnyx::AI::Collections::SourceType::TaggedSymbol)
          WHATSAPP =
            T.let(:whatsapp, Telnyx::AI::Collections::SourceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::Collections::SourceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
