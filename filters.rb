# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# Takes in an ID and returns true if the canadidate, otherwise nil
def find(id)
  @candidates.select do |candidate|
    candidate[:id] == id
  end.first
end

# Takes in a single candidate (hash). Returns true if the candidate has 2 years of experience or
# more. Returns false otherwise
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# Takes in a single candidate and returns true if candidate has over 100 github points
def github_points?(candidate)
  candidate[:github_points] >= 100
end

# Takes in a single candidate and return true if candidate knows Ruby or Python
def languages?(candidate)
  candidate[:languages].include? 'Python' || 'Ruby'
end

# Takes in a single candidate and returns true if they are over the age of 17, otherwise false
def age?(candidate)
  candidate[:age] >= 18
end

# Takes in a single candidate and returns true if they have applied wihtin the last 15 days.
# Otherwise false.
def application_date?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

# Takes in an array of candidates and finds candidates that pass each function/test.
# Are experienced
# Have 100 or more Github points
# Know at least Ruby or Python
# Applied in the last 15 days
# Are over the age of 17 (18+)
def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate)
  end.select do |candidate|
    github_points?(candidate)
  end.select do |candidate|
    languages?(candidate)
  end.select do |candidate|
    age?(candidate)
  end.select do |candidate|
    application_date?(candidate)
  end
end

# Takes in an array of candidates.
# Instead of filtering on the candidates, returns them all back but reordered such that:
  # Candidates with the most experience are at the top
  # For Candidates that have the same years of experience, they are further sorted by their number
  # of Github points (highest first)
def sort_candidates(candidates)
  candidates.sort_by do |candidate|
    [candidate[:years_of_experience], candidate[:github_points]]
  end.reverse
end
