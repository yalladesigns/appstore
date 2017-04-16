class Transaction < ApplicationRecord
  belongs_to :user, :class_name => User, :foreign_key => "User_id"
  belongs_to :app, :class_name => App, :foreign_key => "App_id"
end
