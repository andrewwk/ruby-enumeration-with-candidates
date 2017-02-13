#LHL Week 6 - Ruby Exercise

Take some time to get acquainted with the code:

List out the ruby files that are loaded (required) when we run ruby main.rb
What does the pp method do? How is it different from puts (try it out!)?
Why is ActiveSupport being used (what happens if we take it out)?
What is pry and how is it different than irb?

##Task 1: Practice with Pry
Uncomment the binding.pry call in main.rb and run the main.rb code.

Try checking what the variable @candidates evaluates to. Tip: since the output will be longer than
what can fit on the terminal, it will le t you use arrow keys or space bar to go down.

##Task 2: Experienced Candidates
In the filters.rb file, define the method experienced? such that it:

Takes in a single candidate (hash). Note: not the array.
Returns true if the candidate has 2 years of experience or more
Returns false otherwise
Note: this is a method that gives you back data, it should not output (puts) anything.

##Task 3: Finding by :id
Define a method find that:

Takes in an id
Returns the candidate with that :id
If there is no candidate with that id, it naturally returns nil

##Task 4: "Qualified" Candidates
Define a method qualified_candidates in filters.rb that:

Takes in the collection of candidates
Returns a subset of the candidates that meet the following criteria:
Are experienced
Have 100 or more Github points
Know at least Ruby or Python
Applied in the last 15 days
Are over the age of 17 (18+)
Tip: Consider creating other methods to help keep this clean.

##Task 5: Sort on Experience and Points
Define a method ordered_by_qualifications in filters.rb that:

Takes in a collection of candidates
Instead of filtering on the candidates, returns them all back but reordered such that:
Candidates with the most experience are at the top
For Candidates that have the same years of experience, they are further sorted by their number of
Github points (highest first)
