# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      # Group by one request tag key. Keys starting with ltg*, telnyx*, litellm* or cf*
      # (any case) are rejected.
      module SpendGroupBy
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Telnyx::LlmTokenGateway::SpendGroupBy::TaggedSymbol, String)
          end

        sig do
          override.returns(
            T::Array[Telnyx::LlmTokenGateway::SpendGroupBy::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::LlmTokenGateway::SpendGroupBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOKEN_GROUP =
          T.let(
            :token_group,
            Telnyx::LlmTokenGateway::SpendGroupBy::TaggedSymbol
          )
        TOKEN_USER =
          T.let(
            :token_user,
            Telnyx::LlmTokenGateway::SpendGroupBy::TaggedSymbol
          )
        TOKEN_KEY =
          T.let(:token_key, Telnyx::LlmTokenGateway::SpendGroupBy::TaggedSymbol)
        END_USER =
          T.let(:end_user, Telnyx::LlmTokenGateway::SpendGroupBy::TaggedSymbol)
      end
    end
  end
end
