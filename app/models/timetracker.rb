class Timetracker < ApplicationRecord
  belongs_to :task

  scope :running, -> { where(end_time: nil) }
end
