# typed: strong

module Telnyx
  module Models
    class VideoRegion < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::VideoRegion, Telnyx::Internal::AnyHash) }

      # Height of the video region
      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      # Maximum number of columns of the region's placement grid. By default, the region
      # has as many columns as needed to layout all the specified video sources.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_columns

      # Maximum number of rows of the region's placement grid. By default, the region
      # has as many rows as needed to layout all the specified video sources.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_rows

      # Array of video recording ids to be composed in the region. Can be "\*" to
      # specify all video recordings in the session
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :video_sources

      sig { params(video_sources: T::Array[String]).void }
      attr_writer :video_sources

      # Width of the video region
      sig { returns(T.nilable(Integer)) }
      attr_accessor :width

      # X axis value (in pixels) of the region's upper left corner relative to the upper
      # left corner of the whole room composition viewport.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :x_pos

      # Y axis value (in pixels) of the region's upper left corner relative to the upper
      # left corner of the whole room composition viewport.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :y_pos

      # Regions with higher z_pos values are stacked on top of regions with lower z_pos
      # values
      sig { returns(T.nilable(Integer)) }
      attr_accessor :z_pos

      sig do
        params(
          height: T.nilable(Integer),
          max_columns: T.nilable(Integer),
          max_rows: T.nilable(Integer),
          video_sources: T::Array[String],
          width: T.nilable(Integer),
          x_pos: T.nilable(Integer),
          y_pos: T.nilable(Integer),
          z_pos: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Height of the video region
        height: nil,
        # Maximum number of columns of the region's placement grid. By default, the region
        # has as many columns as needed to layout all the specified video sources.
        max_columns: nil,
        # Maximum number of rows of the region's placement grid. By default, the region
        # has as many rows as needed to layout all the specified video sources.
        max_rows: nil,
        # Array of video recording ids to be composed in the region. Can be "\*" to
        # specify all video recordings in the session
        video_sources: nil,
        # Width of the video region
        width: nil,
        # X axis value (in pixels) of the region's upper left corner relative to the upper
        # left corner of the whole room composition viewport.
        x_pos: nil,
        # Y axis value (in pixels) of the region's upper left corner relative to the upper
        # left corner of the whole room composition viewport.
        y_pos: nil,
        # Regions with higher z_pos values are stacked on top of regions with lower z_pos
        # values
        z_pos: nil
      )
      end

      sig do
        override.returns(
          {
            height: T.nilable(Integer),
            max_columns: T.nilable(Integer),
            max_rows: T.nilable(Integer),
            video_sources: T::Array[String],
            width: T.nilable(Integer),
            x_pos: T.nilable(Integer),
            y_pos: T.nilable(Integer),
            z_pos: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
