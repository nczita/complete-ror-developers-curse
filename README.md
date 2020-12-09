# The Complete Ruby on Rails Developer Course

This the code written durring the course :
**[The Complete Ruby on Rails Developer Course](https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/)** by Mashrur Hossain, Rob Percival, Codestars by Rob Percival. 

## Instalation

I am using rbenv and rbenv-gemset to maintain various ruby and rails versions.

For instalation of those please refer to:
- [rbenv](https://github.com/rbenv/rbenv)
- [ruby-build](https://github.com/rbenv/ruby-build)
- [rbenv-gemset](https://github.com/jf/rbenv-gemset)

I ussully chose to install via plain code checkout. 

To install prefered ruby version, just:
```
$ rbenv install 2.6.5
```

I am using the 2.6.5 version as the 2.7+ versions shows huge amount of deprecation warnings - it's hard to read anything run from console... 

My prefered way to install rails and then use it for project creation:
```
# Create if you haven't before proper gemset in rbenv environment
$ rbenv gemset create 2.6.5 ror5

# Use created gemset and ruby version to install rails
$ RBENV_VERSION="2.6.5" RBENV_GEMSETS="ror5" gem install rails -v 5.2.4.4
```

To start new project in the gemset:
```
$ RBENV_VERSION="2.6.5" RBENV_GEMSETS="ror5" rails new message_me

# And make if default in new project
$ rbenv gemset init ror5

# or ... 
# set rbenv when you have rails installed multiple version are acceptable 
$ rails _5.2.4.4_ new message_me
```

## TODO

- [x] ~~Use Cloud9 to create project (still exist?)~~
- [ ] Use AWS Cloud9 to create project

