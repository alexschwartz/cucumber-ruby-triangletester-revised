Feature: Triangle types are recognized for given side length value triples
  In order to practice my ATDD skills
  As test obsessed developer/qa guy
  I want re-implement the triangle tester code using ATDD

Scenario: Scalene triangle is recognized
	Given the side length values 10, 8, 3
	When ask the triangle type oracle is asked
	Then the triangle type is "Scalene"
      
Scenario Outline: Scalene triangles are recognized
    Given the side length values <side1>, <side2>, <side3>
    When ask the triangle type oracle is asked
    Then the triangle type is "Scalene"
    
    Examples:
      | side1 | side2 | side3 | comment           |
      |    10 |     8 |     3 |                   |
      |     8 |    10 |     3 | permutation       |
    
    