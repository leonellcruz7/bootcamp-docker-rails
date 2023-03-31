## Docker setup

- First time setup:

- Install docker

- CD bootcamp-docker-rails

- Run the ff commands:

```sh
# build the docker image
make build

# setup database
make setup

# start the Docker services
make up
```

## Bootcamp Activity
### Create a Users page list with CRUD functionality. The add and edit can be in a separate pages.

- Create a model called User
  <br> reference for creating model here: https://guides.rubyonrails.org/getting_started.html#mvc-and-you-generating-a-model

- In the generated migration file add the ff fields:
  ```
  t.string firstname
  t.string lastname
  t.string username
  t.string password
  ```
  reference to migration: https://guides.rubyonrails.org/getting_started.html#database-migrations

- Add a routes for users using resources
  <br> reference to routes: https://guides.rubyonrails.org/routing.html#resources-on-the-web

- Create a UsersController with the following methods: index, new, edit, create, update, destroy

- In index page just plot the users properly in a table list. Add a "Add new" button that leads to New page and Edit link/button along with the list that points to Edit page
  <br> reference for Route helper: https://guides.rubyonrails.org/routing.html#creating-paths-and-urls-from-objects

- In New page create a form to which accepts firstname, lastname, username, password as a fields.
you can use form_with helper and use User.new as a model. Target the create method in controller as the url action.
  <br> reference: https://guides.rubyonrails.org/form_helpers.html#binding-a-form-to-an-object

- In Update page same form can be used but use User.find(id) as the model in form_with helper. Target the update method in controller as the url action.

### Bonus
- Create delete link/button that targets the destroy method in controller. The link can be done this way
```
<%= link_to "Delete Book", @book, method: "delete", { confirm: "Are you sure?", disable_with: "Processing..." } %>
```

- Use partial page for form. name it `_form.html.erb` which can be called in new.html.erb and edit.html.erb. Pass the correct model during render like so
```
render "form", model: @model
```
where @model is defined in controller method
