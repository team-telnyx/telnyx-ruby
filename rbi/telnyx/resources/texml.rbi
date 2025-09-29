# typed: strong

module Telnyx
  module Resources
    class Texml
      sig { returns(Telnyx::Resources::Texml::Accounts) }
      attr_reader :accounts

      sig { returns(Telnyx::Resources::Texml::Calls) }
      attr_reader :calls

      # Create a TeXML secret which can be later used as a Dynamic Parameter for TeXML
      # when using Mustache Templates in your TeXML. In your TeXML you will be able to
      # use your secret name, and this name will be replaced by the actual secret value
      # when processing the TeXML on Telnyx side. The secrets are not visible in any
      # logs.
      sig do
        params(
          name: String,
          value: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlSecretsResponse)
      end
      def secrets(
        # Name used as a reference for the secret, if the name already exists within the
        # account its value will be replaced
        name:,
        # Secret value which will be used when rendering the TeXML template
        value:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
