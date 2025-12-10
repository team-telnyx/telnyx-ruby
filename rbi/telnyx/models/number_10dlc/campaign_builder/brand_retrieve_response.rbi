# typed: strong

module Telnyx
  module Models
    module Number10dlc
      module CampaignBuilder
        class BrandRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Number10dlc::CampaignBuilder::BrandRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Campaign annual subscription fee
          sig { returns(T.nilable(Float)) }
          attr_reader :annual_fee

          sig { params(annual_fee: Float).void }
          attr_writer :annual_fee

          # Maximum number of sub-usecases declaration required.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_sub_usecases

          sig { params(max_sub_usecases: Integer).void }
          attr_writer :max_sub_usecases

          # Minimum number of sub-usecases declaration required.
          sig { returns(T.nilable(Integer)) }
          attr_reader :min_sub_usecases

          sig { params(min_sub_usecases: Integer).void }
          attr_writer :min_sub_usecases

          # Map of usecase metadata for each MNO. Key is the network ID of the MNO (e.g.
          # 10017), Value is the mno metadata for the usecase.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :mno_metadata

          sig { params(mno_metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :mno_metadata

          # Campaign monthly subscription fee
          sig { returns(T.nilable(Float)) }
          attr_reader :monthly_fee

          sig { params(monthly_fee: Float).void }
          attr_writer :monthly_fee

          # Campaign quarterly subscription fee
          sig { returns(T.nilable(Float)) }
          attr_reader :quarterly_fee

          sig { params(quarterly_fee: Float).void }
          attr_writer :quarterly_fee

          # Campaign usecase
          sig { returns(T.nilable(String)) }
          attr_reader :usecase

          sig { params(usecase: String).void }
          attr_writer :usecase

          sig do
            params(
              annual_fee: Float,
              max_sub_usecases: Integer,
              min_sub_usecases: Integer,
              mno_metadata: T::Hash[Symbol, T.anything],
              monthly_fee: Float,
              quarterly_fee: Float,
              usecase: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Campaign annual subscription fee
            annual_fee: nil,
            # Maximum number of sub-usecases declaration required.
            max_sub_usecases: nil,
            # Minimum number of sub-usecases declaration required.
            min_sub_usecases: nil,
            # Map of usecase metadata for each MNO. Key is the network ID of the MNO (e.g.
            # 10017), Value is the mno metadata for the usecase.
            mno_metadata: nil,
            # Campaign monthly subscription fee
            monthly_fee: nil,
            # Campaign quarterly subscription fee
            quarterly_fee: nil,
            # Campaign usecase
            usecase: nil
          )
          end

          sig do
            override.returns(
              {
                annual_fee: Float,
                max_sub_usecases: Integer,
                min_sub_usecases: Integer,
                mno_metadata: T::Hash[Symbol, T.anything],
                monthly_fee: Float,
                quarterly_fee: Float,
                usecase: String
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
