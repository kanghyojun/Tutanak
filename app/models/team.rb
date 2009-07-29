class Team < ActiveRecord::Base
  has_and_belongs_to_many :user
	has_many :diaries
  validates_presence_of :title
	validates_presence_of :alias
	validates_uniqueness_of :alias
	def self.is_user_join?(user_id,team_id)
    users = Team.find(team_id).user
    status = TeamsUser.find(:all, :conditions => { :user_id => user_id,
                                                   :team_id => team_id})[0]
    unless status.nil?
      status = status.status
    end 
    is_join = []
    for user in users
      if user.id == user_id
        is_join << true
				case (status)
				  when 1: is_join << 'administrator'
					when 2: is_join << 'member'
					when 3: is_join << 'reservation'
				end
        break
      end
    end
    is_join << false if is_join[0].nil?
    is_join
  end
end
