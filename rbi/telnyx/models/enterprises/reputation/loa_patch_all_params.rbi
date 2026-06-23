# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class LoaPatchAllParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::LoaPatchAllParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # Id of the new signed LOA document (from the Telnyx Documents API). Changing it
          # resets LOA approval; the new document must be approved before more numbers can
          # be added.
          sig { returns(String) }
          attr_accessor :loa_document_id

          sig do
            params(
              enterprise_id: String,
              loa_document_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            # Id of the new signed LOA document (from the Telnyx Documents API). Changing it
            # resets LOA approval; the new document must be approved before more numbers can
            # be added.
            loa_document_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                loa_document_id: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
