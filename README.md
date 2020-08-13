<p align="center">
    <a href="https://github.com/yiisoft" target="_blank">
        <img src="https://avatars0.githubusercontent.com/u/993323" height="100px">
    </a>
    <h1 align="center">Eldorado Rest API TZ</h1>
    <br>
</p>

<h4>Use a POSTMAN  [postman.com](https://www.postman.com/downloads/) to check</h4>

<p>Commands: UPDATE, DELETE and CREATE, work only in REGISTERED users</p>

Implemented queries in the application
-------------------

      http://eldorado/song/create ( POST )        Creates new records
      http://eldorado/song/update?id=1 ( POST )   Update record by ID
      http://eldorado/song/delete?id=1 ( POST )   Update record by ID
      http://eldorado/song ( GET )                Displays all data         
      http://eldorado/song/update?id=1 ( PUT )   Update record by ID
     



REQUIREMENTS
------------

The minimum requirement by this project template that your Web server supports PHP 7.0.0.


INSTALLATION
------------

### Install from an Archive File

`To start a project, you need to clone or download from GitHub.`

`Download and mount the database that is located in the project root in the folder DATABASE`

`In the configuration file for the database, which is located in the directory /config/db.php, 
write the name of the database, username and password`
`

Once everything is upgraded, go to the domain you specified for the test

CONFIGURATION
-------------

### Database

<h3>The database file is in the repository in the folder `\DATABASE`</h3>

Edit the file `config/db.php` with real data, for example:

```php
return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=localhost;dbname=eldorado_db',
    'username' => 'root',
    'password' => '',
    'charset' => 'utf8',
];
```

Testing
-------------

<h3>To test the service, you need to register by going to the menu item `SignUp`</h3>

```php
The following parameters must be specified for postmen testing:

HEADERS
     Kay                Value
       Content-Type       application/json
```
```php
Autorization
    Type
        Bearer Token
    Token
        admin

```


# EldoradoTest
