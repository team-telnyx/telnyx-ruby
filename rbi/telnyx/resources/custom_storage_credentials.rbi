# typed: strong

module Telnyx
  module Resources
    class CustomStorageCredentials
      # Creates a custom storage credentials configuration.
      sig do
        params(
          connection_id: String,
          backend: Telnyx::CustomStorageConfiguration::Backend::OrSymbol,
          configuration:
            T.any(
              Telnyx::GcsConfigurationData::OrHash,
              Telnyx::S3ConfigurationData::OrHash,
              Telnyx::AzureConfigurationData::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CustomStorageCredentialCreateResponse)
      end
      def create(
        # Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
        # resource.
        connection_id,
        backend:,
        configuration:,
        request_options: {}
      )
      end

      # Returns the information about custom storage credentials.
      sig do
        params(
          connection_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CustomStorageCredentialRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
        # resource.
        connection_id,
        request_options: {}
      )
      end

      # Updates a stored custom credentials configuration.
      sig do
        params(
          connection_id: String,
          backend: Telnyx::CustomStorageConfiguration::Backend::OrSymbol,
          configuration:
            T.any(
              Telnyx::GcsConfigurationData::OrHash,
              Telnyx::S3ConfigurationData::OrHash,
              Telnyx::AzureConfigurationData::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CustomStorageCredentialUpdateResponse)
      end
      def update(
        # Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
        # resource.
        connection_id,
        backend:,
        configuration:,
        request_options: {}
      )
      end

      # Deletes a stored custom credentials configuration.
      sig do
        params(
          connection_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
        # resource.
        connection_id,
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
