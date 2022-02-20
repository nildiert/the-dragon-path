module Video::DefaultScope
  extend ActiveSupport::Concern

  included do
    scope :asc_order, -> { order(base_video_order: :asc) }
  end

end