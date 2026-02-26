# typed: strong

module Telnyx
  module Models
    class CountryCoverageAPI < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CountryCoverageAPI, Telnyx::Internal::AnyHash)
        end

      # Country ISO code
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Set of features supported
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :features

      sig { params(features: T::Array[String]).void }
      attr_writer :features

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :international_sms

      sig { params(international_sms: T::Boolean).void }
      attr_writer :international_sms

      # Indicates whether country can be queried with inventory coverage endpoint
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :inventory_coverage

      sig { params(inventory_coverage: T::Boolean).void }
      attr_writer :inventory_coverage

      sig { returns(T.nilable(Telnyx::CountryCoverageAPI::Local)) }
      attr_reader :local

      sig { params(local: Telnyx::CountryCoverageAPI::Local::OrHash).void }
      attr_writer :local

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :mobile

      sig { params(mobile: T::Hash[Symbol, T.anything]).void }
      attr_writer :mobile

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :national

      sig { params(national: T::Hash[Symbol, T.anything]).void }
      attr_writer :national

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :numbers

      sig { params(numbers: T::Boolean).void }
      attr_writer :numbers

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :p2p

      sig { params(p2p: T::Boolean).void }
      attr_writer :p2p

      # Phone number type
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :phone_number_type

      sig { params(phone_number_type: T::Array[String]).void }
      attr_writer :phone_number_type

      # Supports quickship
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :quickship

      sig { params(quickship: T::Boolean).void }
      attr_writer :quickship

      # Geographic region (e.g., AMER, EMEA, APAC)
      sig { returns(T.nilable(String)) }
      attr_accessor :region

      # Supports reservable
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :reservable

      sig { params(reservable: T::Boolean).void }
      attr_writer :reservable

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :shared_cost

      sig { params(shared_cost: T::Hash[Symbol, T.anything]).void }
      attr_writer :shared_cost

      sig { returns(T.nilable(Telnyx::CountryCoverageAPI::TollFree)) }
      attr_reader :toll_free

      sig do
        params(toll_free: Telnyx::CountryCoverageAPI::TollFree::OrHash).void
      end
      attr_writer :toll_free

      sig do
        params(
          code: String,
          features: T::Array[String],
          international_sms: T::Boolean,
          inventory_coverage: T::Boolean,
          local: Telnyx::CountryCoverageAPI::Local::OrHash,
          mobile: T::Hash[Symbol, T.anything],
          national: T::Hash[Symbol, T.anything],
          numbers: T::Boolean,
          p2p: T::Boolean,
          phone_number_type: T::Array[String],
          quickship: T::Boolean,
          region: T.nilable(String),
          reservable: T::Boolean,
          shared_cost: T::Hash[Symbol, T.anything],
          toll_free: Telnyx::CountryCoverageAPI::TollFree::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Country ISO code
        code: nil,
        # Set of features supported
        features: nil,
        international_sms: nil,
        # Indicates whether country can be queried with inventory coverage endpoint
        inventory_coverage: nil,
        local: nil,
        mobile: nil,
        national: nil,
        numbers: nil,
        p2p: nil,
        # Phone number type
        phone_number_type: nil,
        # Supports quickship
        quickship: nil,
        # Geographic region (e.g., AMER, EMEA, APAC)
        region: nil,
        # Supports reservable
        reservable: nil,
        shared_cost: nil,
        toll_free: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            features: T::Array[String],
            international_sms: T::Boolean,
            inventory_coverage: T::Boolean,
            local: Telnyx::CountryCoverageAPI::Local,
            mobile: T::Hash[Symbol, T.anything],
            national: T::Hash[Symbol, T.anything],
            numbers: T::Boolean,
            p2p: T::Boolean,
            phone_number_type: T::Array[String],
            quickship: T::Boolean,
            region: T.nilable(String),
            reservable: T::Boolean,
            shared_cost: T::Hash[Symbol, T.anything],
            toll_free: Telnyx::CountryCoverageAPI::TollFree
          }
        )
      end
      def to_hash
      end

      class Local < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CountryCoverageAPI::Local, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :features

        sig { params(features: T::Array[String]).void }
        attr_writer :features

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :full_pstn_replacement

        sig { params(full_pstn_replacement: T::Boolean).void }
        attr_writer :full_pstn_replacement

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :international_sms

        sig { params(international_sms: T::Boolean).void }
        attr_writer :international_sms

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :p2p

        sig { params(p2p: T::Boolean).void }
        attr_writer :p2p

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :quickship

        sig { params(quickship: T::Boolean).void }
        attr_writer :quickship

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reservable

        sig { params(reservable: T::Boolean).void }
        attr_writer :reservable

        sig do
          params(
            features: T::Array[String],
            full_pstn_replacement: T::Boolean,
            international_sms: T::Boolean,
            p2p: T::Boolean,
            quickship: T::Boolean,
            reservable: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          features: nil,
          full_pstn_replacement: nil,
          international_sms: nil,
          p2p: nil,
          quickship: nil,
          reservable: nil
        )
        end

        sig do
          override.returns(
            {
              features: T::Array[String],
              full_pstn_replacement: T::Boolean,
              international_sms: T::Boolean,
              p2p: T::Boolean,
              quickship: T::Boolean,
              reservable: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class TollFree < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CountryCoverageAPI::TollFree,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :features

        sig { params(features: T::Array[String]).void }
        attr_writer :features

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :full_pstn_replacement

        sig { params(full_pstn_replacement: T::Boolean).void }
        attr_writer :full_pstn_replacement

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :international_sms

        sig { params(international_sms: T::Boolean).void }
        attr_writer :international_sms

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :p2p

        sig { params(p2p: T::Boolean).void }
        attr_writer :p2p

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :quickship

        sig { params(quickship: T::Boolean).void }
        attr_writer :quickship

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reservable

        sig { params(reservable: T::Boolean).void }
        attr_writer :reservable

        sig do
          params(
            features: T::Array[String],
            full_pstn_replacement: T::Boolean,
            international_sms: T::Boolean,
            p2p: T::Boolean,
            quickship: T::Boolean,
            reservable: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          features: nil,
          full_pstn_replacement: nil,
          international_sms: nil,
          p2p: nil,
          quickship: nil,
          reservable: nil
        )
        end

        sig do
          override.returns(
            {
              features: T::Array[String],
              full_pstn_replacement: T::Boolean,
              international_sms: T::Boolean,
              p2p: T::Boolean,
              quickship: T::Boolean,
              reservable: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
