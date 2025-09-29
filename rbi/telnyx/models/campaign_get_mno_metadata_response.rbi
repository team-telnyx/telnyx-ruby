# typed: strong

module Telnyx
  module Models
    class CampaignGetMnoMetadataResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CampaignGetMnoMetadataResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::CampaignGetMnoMetadataResponse::Mno10999)
        )
      end
      attr_reader :mno_10999

      sig do
        params(
          mno_10999:
            Telnyx::Models::CampaignGetMnoMetadataResponse::Mno10999::OrHash
        ).void
      end
      attr_writer :mno_10999

      sig do
        params(
          mno_10999:
            Telnyx::Models::CampaignGetMnoMetadataResponse::Mno10999::OrHash
        ).returns(T.attached_class)
      end
      def self.new(mno_10999: nil)
      end

      sig do
        override.returns(
          {
            mno_10999: Telnyx::Models::CampaignGetMnoMetadataResponse::Mno10999
          }
        )
      end
      def to_hash
      end

      class Mno10999 < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CampaignGetMnoMetadataResponse::Mno10999,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :min_msg_samples

        sig { returns(String) }
        attr_accessor :mno

        sig { returns(T::Boolean) }
        attr_accessor :mno_review

        sig { returns(T::Boolean) }
        attr_accessor :mno_support

        sig { returns(T::Boolean) }
        attr_accessor :no_embedded_link

        sig { returns(T::Boolean) }
        attr_accessor :no_embedded_phone

        sig { returns(T::Boolean) }
        attr_accessor :qualify

        sig { returns(T::Boolean) }
        attr_accessor :req_subscriber_help

        sig { returns(T::Boolean) }
        attr_accessor :req_subscriber_optin

        sig { returns(T::Boolean) }
        attr_accessor :req_subscriber_optout

        sig do
          params(
            min_msg_samples: Integer,
            mno: String,
            mno_review: T::Boolean,
            mno_support: T::Boolean,
            no_embedded_link: T::Boolean,
            no_embedded_phone: T::Boolean,
            qualify: T::Boolean,
            req_subscriber_help: T::Boolean,
            req_subscriber_optin: T::Boolean,
            req_subscriber_optout: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          min_msg_samples:,
          mno:,
          mno_review:,
          mno_support:,
          no_embedded_link:,
          no_embedded_phone:,
          qualify:,
          req_subscriber_help:,
          req_subscriber_optin:,
          req_subscriber_optout:
        )
        end

        sig do
          override.returns(
            {
              min_msg_samples: Integer,
              mno: String,
              mno_review: T::Boolean,
              mno_support: T::Boolean,
              no_embedded_link: T::Boolean,
              no_embedded_phone: T::Boolean,
              qualify: T::Boolean,
              req_subscriber_help: T::Boolean,
              req_subscriber_optin: T::Boolean,
              req_subscriber_optout: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
