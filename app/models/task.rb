class Task < ApplicationRecord
  belongs_to :user

  enum :status, { draft: 0, underway: 1, done: 2, archived: 3 }

  validates :title, presence: true 
  validates :completed, inclusion: { in: [true, false] }
end
