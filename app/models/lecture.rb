class Lecture < ProgramNode
  validates :type, inclusion: { in: ['ProgramRevision'] }
end
