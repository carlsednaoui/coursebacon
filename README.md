# To do

## Round 1

Merge all 3 tables (course, book, tutorial) - call this table "Resource" with a resrouce type (for course, book, etc)

__Migrations__

$ rails g migration Resource title:string url:string description:text user_id:integer tags:????? curriculum_id:integer type:string

$ rails g migration Curriculum ??resources??belonging??to??curriculum

curriculum has many resources
a resource CAN belong to a curriculum

## Round 2

Get rid of "BookReview, CourseReview, etc" and instead have "Comments" with a resource ID

Add tags that autocomplete (for resources)

Add a way to "thumb up" or "tumb down" resources or curriculums

Add a way to "add to favorite (or add to learning list)"

Resource score = Backlinks (need to update nightly - google, seomoz), Tweets (nightly), tumbs, 

Add curriculums (which are a collection of Resources) - dont show full curriculum unless user is signed in

## Other

1) add search functionality
2) allow users to modify item descriptions (like a wiki)
3) allow the star to sort by most popular
4) find a way to have popular#{page} instead of popular_course, popular_book, popular_tutorial - Basically, I need to create a "popularity" function

def popularity(item)
--
---
--
end