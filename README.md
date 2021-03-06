# YumYum-API

<h2>Recipes</h2>

<h4>-Get all recipes</h4> 

`GET /recipes` <br>
Response:

```json
{
    "id": 6,
    "name": "JORDANIAN MANSAF",
    "description": "Lamb mansaf, cooked in fermented yoghurt called jameed",
    "duration": 60,
    "image": null,
    "user_id": null,
    "created_at": "2018-05-25T08:38:42.169Z",
    "updated_at": "2018-05-25T08:38:42.169Z",
    "steps": [
        {
            "id": 14,
            "order": 1,
            "description": "Wash meat cubes and place in tray with lid",
            "image": null,
            "recipe_id": 6,
            "created_at": "2018-05-25T08:38:42.171Z",
            "updated_at": "2018-05-25T08:38:42.171Z"
        }
    ],
    "ingredients": [
        {
            "id": 6,
            "description": "Jameed",
            "created_at": "2018-05-25T08:38:42.174Z",
            "updated_at": "2018-05-25T08:38:42.174Z",
            "recipe_id": 6
        }
    ]
}
```

<h4>-Add new recipe</h4>

`POST /recipes` <br>
Parameters: <br>

```json
{
"name":"JORDANIAN MANSAF",
"description":"Lamb mansaf, cooked in fermented yoghurt called jameed",
"duration":20,
"image":"image",
"steps_attributes":[{"order": 1, "description": "Wash meat cubes and place in tray with lid", "image":""}],
"ingredients_attributes":[{"description": "Jameed"}]
}
```

<h4>-Update recipe</h4>

`PUT /recipes/:id` <br>
Parameters: <br>

```json
{
"name":"JORDANIAN MANSAF",
"description":"Lamb mansaf, cooked in fermented yoghurt called jameed",
"duration":20,
"image":"image",
"steps_attributes":[{"order": 1, "description": "Wash meat cubes and place in tray with lid", "image":""}],
"ingredients_attributes":[{"description": "Jameed"}]
}
```

<h4>-Delete recipe</h4>

`DELETE /recipes/:id` <br>
Response:

```json
{
    "message": "Recipe deleted"
}
```

# TODO
- Add user
- Edit user
- Get user
- Authentication
- Recipes by user
- Edit step
- Delete step
- Edit ingredient
- Delete ingredient
- Add rating 
- Delete rating 
- Edit rating
- Get ratings
- Add keywords for recipes
- Search for recipes


