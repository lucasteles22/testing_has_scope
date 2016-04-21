class Graduation < ActiveRecord::Base
  scope :active, -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }
  scope :by_degree, -> degree { where(:degree => degree) }

  # Security for date parameter incorrect
  def self.by_period(started_at, ended_at)
    begin
      where("started_at >= ? AND ended_at <= ?", Date.parse(started_at), Date.parse(ended_at))
    rescue
      all
    end
  end
end
