Using the default profile...
Feature: display list of movies filtered by MPAA rating
  As a concerned parent
  So that I can quickly browse movies appropriate for my family
  I want to see movies matching only certain MPAA ratings

  Background: movies have been added to database # features/filter_movie_list.feature:7
    Given the following movies exist:            # features/step_definitions/movie_steps.rb:3
      | title                   | rating | release_date |
      | Aladdin                 | G      | 25-Nov-1992  |
      | The Terminator          | R      | 26-Oct-1984  |
      | When Harry Met Sally    | R      | 21-Jul-1989  |
      | The Help                | PG-13  | 10-Aug-2011  |
      | Chocolat                | PG-13  | 5-Jan-2001   |
      | Amelie                  | R      | 25-Apr-2001  |
      | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
      | The Incredibles         | PG     | 5-Nov-2004   |
      | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
      | Chicken Run             | G      | 21-Jun-2000  |
    And I am on the RottenPotatoes home page     # features/step_definitions/web_steps.rb:44
    Then 10 seed movies should exist             # features/step_definitions/movie_steps.rb:11

  Scenario: restrict to movies with 'PG' or 'R' ratings # features/filter_movie_list.feature:25

  # enter step(s) to check the 'PG' and 'R' checkboxes
  # enter step(s) to uncheck all other checkboxes
  # enter step to "submit" the search form on the homepage
  # enter step(s) to ensure that PG and R movies are visible
  # enter step(s) to ensure that other movies are not visible
  Scenario: all ratings selected # features/filter_movie_list.feature:32

Feature: display list of movies sorted by different criteria
  As an avid moviegoer
  So that I can quickly browse movies based on my preferences
  I want to see movies sorted by title or release date

  Background: movies have been added to database # features/sort_movie_list.feature:7
    Given the following movies exist:            # features/step_definitions/movie_steps.rb:3
      | title                   | rating | release_date |
      | Aladdin                 | G      | 25-Nov-1992  |
      | The Terminator          | R      | 26-Oct-1984  |
      | When Harry Met Sally    | R      | 21-Jul-1989  |
      | The Help                | PG-13  | 10-Aug-2011  |
      | Chocolat                | PG-13  | 5-Jan-2001   |
      | Amelie                  | R      | 25-Apr-2001  |
      | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
      | The Incredibles         | PG     | 5-Nov-2004   |
      | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
      | Chicken Run             | G      | 21-Jun-2000  |
    And I am on the RottenPotatoes home page     # features/step_definitions/web_steps.rb:44
    Then 10 seed movies should exist             # features/step_definitions/movie_steps.rb:11

  Scenario: sort movies alphabetically # features/sort_movie_list.feature:25
    When I follow "Movie Title"        # features/step_definitions/web_steps.rb:56

  # your steps here
  Scenario: sort movies in increasing order of release date # features/sort_movie_list.feature:29
    When I follow "Release Date"                            # features/step_definitions/web_steps.rb:56

4 scenarios (4 passed)
14 steps (14 passed)
0m0.339s
