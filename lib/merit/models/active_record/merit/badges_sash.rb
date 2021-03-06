module Merit
  class BadgesSash < ActiveRecord::Base
    include Base::BadgesSash
    has_many :activity_logs,
             class_name: 'Merit::ActivityLog',
             as: :related_change

    attr_accessible :badge_id if show_attr_accessible?
  end
end
