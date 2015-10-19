class ProgramRevision < ProgramNode
  validates :type, inclusion: { in: ['Program'] }
end
