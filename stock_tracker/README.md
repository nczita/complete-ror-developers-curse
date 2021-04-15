# Stock Tracker Social Media App

This is Stock Tracker Social Media App sections from: The Complete Ruby on Rails Developer Course by Mashrur Hossain.

## Generators

Create controller:

```
$ rails generate controller welcome index

# OR with all CRUD operations

$ rails generate scaffold_controller welcome --no-helper --no-jbuilder
```

Create model:

```
$ rails g model Stock ticker:string name:string last_price:decimal
```

Edit/create credentials:

```
$ rails credentials:edit
```

Create users controllers

```
$ rails generate controller users my_portfolio
```

## Libs

- [Devise](https://github.com/heartcombo/devise#starting-with-rails)
- [Bootstrap](https://getbootstrap.com/)
  - https://www.mashrurhossain.com/blog/rails6bootstrap4
- [Devise Bootstrap Views](https://github.com/hisea/devise-bootstrap-views)
- [IEX Finance API](https://github.com/dblock/iex-ruby-client)
  - https://iexcloud.io/

## Readings

- https://towardsdatascience.com/leaking-secrets-in-web-applications-46357831b8ed
