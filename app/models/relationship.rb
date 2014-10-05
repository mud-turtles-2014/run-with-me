class Relationship < ActiveRecord::Base
  belongs_to :inviter, class_name: "User"#, foreign_key: "inviter_id" don't have foreign key bc
  belongs_to :invited, class_name: "User"#, foreign_key: "invited_id"

end
