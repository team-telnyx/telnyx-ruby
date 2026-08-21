# typed: strong

module Telnyx
  module Resources
    class Porting
      # Endpoints related to porting orders management.
      class LoaConfigurations
        # Creates a new LOA configuration with your company details and branding for use
        # when generating LOA documents for porting orders.
        sig do
          params(
            address:
              Telnyx::Porting::LoaConfigurationCreateParams::Address::OrHash,
            company_name: String,
            contact:
              Telnyx::Porting::LoaConfigurationCreateParams::Contact::OrHash,
            logo: Telnyx::Porting::LoaConfigurationCreateParams::Logo::OrHash,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::LoaConfigurationCreateResponse)
        end
        def create(
          # The address of the company.
          address:,
          # The name of the company
          company_name:,
          # The contact information of the company.
          contact:,
          # The logo of the LOA configuration
          logo:,
          # The name of the LOA configuration
          name:,
          request_options: {}
        )
        end

        # Returns the details of a single LOA (Letter of Authorization) configuration by
        # its identifier.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::LoaConfigurationRetrieveResponse)
        end
        def retrieve(
          # Identifies a LOA configuration.
          id,
          request_options: {}
        )
        end

        # Updates the specified LOA configuration with the provided fields and returns the
        # updated configuration.
        sig do
          params(
            id: String,
            address:
              Telnyx::Porting::LoaConfigurationUpdateParams::Address::OrHash,
            company_name: String,
            contact:
              Telnyx::Porting::LoaConfigurationUpdateParams::Contact::OrHash,
            logo: Telnyx::Porting::LoaConfigurationUpdateParams::Logo::OrHash,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::LoaConfigurationUpdateResponse)
        end
        def update(
          # Identifies a LOA configuration.
          id,
          # The address of the company.
          address:,
          # The name of the company
          company_name:,
          # The contact information of the company.
          contact:,
          # The logo of the LOA configuration
          logo:,
          # The name of the LOA configuration
          name:,
          request_options: {}
        )
        end

        # Returns a paginated list of your LOA (Letter of Authorization) configurations.
        # LOA configurations customize the company details and branding used on generated
        # LOA documents.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Porting::PortingLoaConfiguration
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # Permanently deletes the specified LOA configuration so it can no longer be used
        # when generating LOA documents.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Identifies a LOA configuration.
          id,
          request_options: {}
        )
        end

        # Preview the LOA template that would be generated without need to create LOA
        # configuration.
        sig do
          params(
            address:
              Telnyx::Porting::LoaConfigurationPreviewParams::Address::OrHash,
            company_name: String,
            contact:
              Telnyx::Porting::LoaConfigurationPreviewParams::Contact::OrHash,
            logo: Telnyx::Porting::LoaConfigurationPreviewParams::Logo::OrHash,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def preview(
          # The address of the company.
          address:,
          # The name of the company
          company_name:,
          # The contact information of the company.
          contact:,
          # The logo of the LOA configuration
          logo:,
          # The name of the LOA configuration
          name:,
          request_options: {}
        )
        end

        # Preview the LOA template that would be generated without need to create LOA
        # configuration.
        sig do
          params(
            address:
              Telnyx::Porting::LoaConfigurationPreview0Params::Address::OrHash,
            company_name: String,
            contact:
              Telnyx::Porting::LoaConfigurationPreview0Params::Contact::OrHash,
            logo: Telnyx::Porting::LoaConfigurationPreview0Params::Logo::OrHash,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def preview_0(
          # The address of the company.
          address:,
          # The name of the company
          company_name:,
          # The contact information of the company.
          contact:,
          # The logo of the LOA configuration
          logo:,
          # The name of the LOA configuration
          name:,
          request_options: {}
        )
        end

        # Renders a preview of the LOA document produced by this configuration so you can
        # verify company details and branding before using it on porting orders.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def preview_1(
          # Identifies a LOA configuration.
          id,
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
end
