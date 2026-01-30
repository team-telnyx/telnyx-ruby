# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      # @return [Telnyx::Resources::Texml::Accounts]
      attr_reader :accounts

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TexmlSecretsParams} for more details.
      #
      # Create a TeXML secret which can be later used as a Dynamic Parameter for TeXML
      # when using Mustache Templates in your TeXML. In your TeXML you will be able to
      # use your secret name, and this name will be replaced by the actual secret value
      # when processing the TeXML on Telnyx side. The secrets are not visible in any
      # logs.
      #
      # @overload secrets(name:, value:, request_options: {})
      #
      # @param name [String] Name used as a reference for the secret, if the name already exists within the a
      #
      # @param value [String] Secret value which will be used when rendering the TeXML template
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlSecretsResponse]
      #
      # @see Telnyx::Models::TexmlSecretsParams
      def secrets(params)
        parsed, options = Telnyx::TexmlSecretsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "texml/secrets",
          body: parsed,
          model: Telnyx::Models::TexmlSecretsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @accounts = Telnyx::Resources::Texml::Accounts.new(client: client)
      end
    end
  end
end
