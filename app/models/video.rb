class Video < ApplicationRecord
  include Video::DefaultScope

  belongs_to :user
  belongs_to :base_video
  belongs_to :course

  enum status: [:unfinished, :current, :finished]


  def text_style
    puts "*" * 100
    puts text_class.fetch(self.status)
    text_class.fetch(self.status)
  end

  def text_class
    {
      "unfinished" => "text-primary",
      "current" => "text-primary",
      "finished" => "text-primary"
    }
  end


end
