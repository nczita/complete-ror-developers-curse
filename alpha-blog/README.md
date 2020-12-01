# ALPHA-BLOG

This the Alpha Blog sections from:
**[The Complete Ruby on Rails Developer Course](https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/)** by Mashrur Hossain, Rob Percival, Codestars by Rob Percival. 

## Instalation

Instalation on most systems is trivial, just install rbenv, nodenv and required by Gemfile native libaries. 

## TODO

[ ] Create integeration tests
  [ ] Users sign-in process 
  [ ] New article creation process
[ ] Write and RUN basic system test
[ ] Deploy to Heroku

## Notes from lecture

### Categories controller and test

To generate tests:

```
bin/rails generate test_unit:scaffold category
```

### Integration test: Create category business process

```
bin/rails generate integration_test create_category
```

