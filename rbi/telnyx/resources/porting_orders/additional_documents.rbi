# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class AdditionalDocuments
        # Creates a list of additional documents for a porting order.
        sig do
          params(
            id: String,
            additional_documents:
              T::Array[
                Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse
          )
        end
        def create(
          # Porting Order id
          id,
          additional_documents: nil,
          request_options: {}
        )
        end

        # Returns a list of additional documents for a porting order.
        sig do
          params(
            id: String,
            filter:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::Models::PortingOrders::AdditionalDocumentListResponse
            ]
          )
        end
        def list(
          # Porting Order id
          id,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[document_type]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        # Deletes an additional document for a porting order.
        sig do
          params(
            additional_document_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Additional document identification.
          additional_document_id,
          # Porting Order id
          id:,
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
