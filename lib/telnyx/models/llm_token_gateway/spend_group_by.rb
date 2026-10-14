# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # Group by one request tag key. Keys starting with ltg*, telnyx*, litellm* or cf*
      # (any case) are rejected.
      module SpendGroupBy
        extend Telnyx::Internal::Type::Union

        variant const: -> { Telnyx::Models::LlmTokenGateway::SpendGroupBy::TOKEN_GROUP }

        variant const: -> { Telnyx::Models::LlmTokenGateway::SpendGroupBy::TOKEN_USER }

        variant const: -> { Telnyx::Models::LlmTokenGateway::SpendGroupBy::TOKEN_KEY }

        variant const: -> { Telnyx::Models::LlmTokenGateway::SpendGroupBy::END_USER }

        # Group by one request tag key. Keys starting with ltg_, telnyx_, litellm_ or cf_ (any case) are rejected.
        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Telnyx::LlmTokenGateway::SpendGroupBy::TaggedSymbol, String) }
        end

        # @!group

        TOKEN_GROUP = :token_group
        TOKEN_USER = :token_user
        TOKEN_KEY = :token_key
        END_USER = :end_user

        # @!endgroup
      end
    end
  end
end
