# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::RemediationCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # How the numbers are used (free text).
          sig { returns(String) }
          attr_accessor :call_purpose

          # Contact email for tracking this request.
          sig { returns(String) }
          attr_accessor :contact_email

          # Phone numbers in E.164 format. Each must belong to this enterprise. Maximum
          # 2,000 per request.
          sig { returns(T::Array[String]) }
          attr_accessor :phone_numbers

          # Optional https:// URL for status notifications.
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          sig do
            params(
              enterprise_id: String,
              call_purpose: String,
              contact_email: String,
              phone_numbers: T::Array[String],
              webhook_url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            # How the numbers are used (free text).
            call_purpose:,
            # Contact email for tracking this request.
            contact_email:,
            # Phone numbers in E.164 format. Each must belong to this enterprise. Maximum
            # 2,000 per request.
            phone_numbers:,
            # Optional https:// URL for status notifications.
            webhook_url: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                call_purpose: String,
                contact_email: String,
                phone_numbers: T::Array[String],
                webhook_url: String,
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
