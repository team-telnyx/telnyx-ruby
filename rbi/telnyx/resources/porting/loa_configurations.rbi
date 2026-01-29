# typed: strong

module Telnyx
  module Resources
    class Porting
      class LoaConfigurations
        # Create a LOA configuration.
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

        # Retrieve a specific LOA configuration.
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

        # Update a specific LOA configuration.
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

        # List the LOA configurations.
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

        # Delete a specific LOA configuration.
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

        # Preview a specific LOA configuration.
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
