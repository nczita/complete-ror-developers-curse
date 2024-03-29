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

Create many2many UserStock model:

```
$ rails g resource UserStock user:references stock:references
```

## Passwords

Password for all users should be "example".

> user_1 = User.find(1)
> user_1.password = "example"
> user_1.save

## Libs

- [Devise](https://github.com/heartcombo/devise#starting-with-rails)
- [Bootstrap](https://getbootstrap.com/)
  - https://www.mashrurhossain.com/blog/rails6bootstrap4
- [Devise Bootstrap Views](https://github.com/hisea/devise-bootstrap-views)
- [IEX Finance API](https://github.com/dblock/iex-ruby-client)
  - https://iexcloud.io/
- [Font Awesome Rails](https://github.com/bokmann/font-awesome-rails)

## Readings

- https://towardsdatascience.com/leaking-secrets-in-web-applications-46357831b8ed
