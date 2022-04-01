John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony server:start -d
                                                                                
 [WARNING] run "symfony.exe server:ca:install" first if you want to run the web server with TLS support, or use "--p12
 " or "--no-tls" to avoid this warning                                          
                                                                                

                                                                                
 [WARNING] The local web server is optimized for local development and MUST never be used in a production setup.
                                                                                

                                                                                
 [OK] Web server listening                                                      
      The Web server is using PHP CGI 8.1.2                                     
      http://127.0.0.1:8000                                                     
                                                                                

Stream the logs via symfony.exe server:log

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console doctrine:database:create
Created database `my_sdbsymfony` for connection named default

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:entity

 Class name of the entity to create or update (e.g. VictoriousPuppy):
 > Game

 created: src/Entity/Game.php
 created: src/Repository/GameRepository.php

 Entity generated! Now let s add some fields!
 You can always add more fields later manually or by re-running this command.

 New property name (press <return> to stop adding fields):
 > title

 Field type (enter ? to see all types) [string]:
 > ?

Main types
  * string
  * text
  * boolean
  * integer (or smallint, bigint)
  * float

Relationships / Associations
  * relation (a wizard will help you build the relation)
  * ManyToOne
  * OneToMany
  * ManyToMany
  * OneToOne

Array/Object Types
  * array (or simple_array)
  * json
  * object
  * binary
  * blob

Date/Time Types
  * datetime (or datetime_immutable)
  * datetimetz (or datetimetz_immutable)
  * date (or date_immutable)
  * time (or time_immutable)
  * dateinterval

Other Types
  * ascii_string
  * decimal
  * guid


 Field type (enter ? to see all types) [string]:
 >

 Field length [255]:
 > 30

 Can this field be null in the database (nullable) (yes/no) [no]:
 >

 updated: src/Entity/Game.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > min_players

 Field type (enter ? to see all types) [string]:
 > integer

 Can this field be null in the database (nullable) (yes/no) [no]:
 >

 updated: src/Entity/Game.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > max_players

 Field type (enter ? to see all types) [string]:
 > integer

 Can this field be null in the database (nullable) (yes/no) [no]:
 >

 updated: src/Entity/Game.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 >



  Success!


 Next: When you re ready, create a migration with php bin/console make:migration


John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:migration



  Success!


 Next: Review the new migration "migrations/Version20220324140638.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
 See https://symfony.com/doc/current/bundles/DoctrineMigrationsBundle/index.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ php bin/console doctrine:migration:migrate

 WARNING! You are about to execute a migration in database "my_sdbsym
fony" that could result in schema changes and data loss. Are you sure
 you wish to continue? (yes/no) [yes]:
 > 
 
 [notice] Migrating up to DoctrineMigrations\Version20220324140638
[notice] finished in 383.5ms, used 20M memory, 1 migrations executed,
 1 sql queries


John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:entity

 Class name of the entity to create or update (e.g. AgreeablePopsicle):
 > Player

 created: src/Entity/Player.php
 created: src/Repository/PlayerRepository.php

 Entity generated! Now let s add some fields!
 You can always add more fields later manually or by re-running this command.

 New property name (press <return> to stop adding fields):
 > email

 Field type (enter ? to see all types) [string]:
 >

 Field length [255]:
 >

 Can this field be null in the database (nullable) (yes/no) [no]:
 >

 updated: src/Entity/Player.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > nickname

 Field type (enter ? to see all types) [string]:
 >

 Field length [255]:
 > 20

 Can this field be null in the database (nullable) (yes/no) [no]:
 >

 updated: src/Entity/Player.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 >



  Success!


 Next: When you re ready, create a migration with php bin/console make:migration
 
John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:entity

 Class name of the entity to create or update (e.g. VictoriousPopsicle):
 > Contest

 created: src/Entity/Contest.php
 created: src/Repository/ContestRepository.php

 Entity generated! Now let s add some fields!
 You can always add more fields later manually or by re-running this command.

 New property name (press <return> to stop adding fields):
 > start_date

 Field type (enter ? to see all types) [string]:
 > date

 Can this field be null in the database (nullable) (yes/no) [no]:
 >

 updated: src/Entity/Contest.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > game
 
  Field type (enter ? to see all types) [string]:
 > ?

Main types
  * string
  * text
  * boolean
  * integer (or smallint, bigint)
  * float

Relationships / Associations
  * relation (a wizard will help you build the relation)
  * ManyToOne
  * OneToMany
  * ManyToMany
  * OneToOne

Array/Object Types
  * array (or simple_array)
  * json
  * object
  * binary
  * blob

Date/Time Types
  * datetime (or datetime_immutable)
  * datetimetz (or datetimetz_immutable)
  * date (or date_immutable)
  * time (or time_immutable)
  * dateinterval

Other Types
  * ascii_string
  * decimal
  * guid


 Field type (enter ? to see all types) [string]:
 > relation

 What class should this entity be related to?:
 > Game

What type of relationship is this?
 ------------ -------------------------------------------------------------------
  Type         Description                                           
 ------------ -------------------------------------------------------------------
  ManyToOne    Each Contest relates to (has) one Game.               
               Each Game can relate to (can have) many Contest objects
                                                                     
  OneToMany    Each Contest can relate to (can have) many Game objects.
               Each Game relates to (has) one Contest                
                                                                     
  ManyToMany   Each Contest can relate to (can have) many Game objects.
               Each Game can also relate to (can also have) many Contest objects
                                                                     
  OneToOne     Each Contest relates to (has) exactly one Game.       
               Each Game also relates to (has) exactly one Contest.  
 ------------ -------------------------------------------------------------------

 Relation type? [ManyToOne, OneToMany, ManyToMany, OneToOne]:
 > ManyToOne

 Is the Contest.game property allowed to be null (nullable)? (yes/no) [yes]:
 > no

 Do you want to add a new property to Game so that you can access/update Contest objects from it - e.g. $game->getContests()? (yes/no) [yes]:
 >

 A new property will also be added to the Game class so that you can access the related Contest objects from it.

 New field name inside Game [contests]:
 >

 Do you want to activate orphanRemoval on your relationship?
 A Contest is "orphaned" when it is removed from its related Game.
 e.g. $game->removeContest($contest)

 NOTE: If a Contest may *change* from one Game to another, answer "no".

 Do you want to automatically delete orphaned App\Entity\Contest objects (orphanRemoval)? (yes/no) [no]:
 > yes

 updated: src/Entity/Contest.php
 updated: src/Entity/Game.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 > winner

 Field type (enter ? to see all types) [string]:
 > ManyToOne

 What class should this entity be related to?:
 > Player

 Is the Contest.winner property allowed to be null (nullable)? (yes/no) [yes]:
 >

 Do you want to add a new property to Player so that you can access/update Contest objects from it - e.g. $player->getContests()? (yes/no) [yes]:
 >

 A new property will also be added to the Player class so that you can access the related Contest objects from it.

 New field name inside Player [contests]:
 > winner_contests

 updated: src/Entity/Contest.php
 updated: src/Entity/Player.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 >



  Success!


 Next: When you re ready, create a migration with php bin/console make:migration


John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:migration



  Success!


 Next: Review the new migration "migrations/Version20220324152557.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
 See https://symfony.com/doc/current/bundles/DoctrineMigrationsBundle/index.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console doctrine:migrations:migrate

 WARNING! You are about to execute a migration in database "my_sdbsymfony" that could result in schema changes and data loss. Are you sure you wish to continue? (yes/no) [yes]:
 >

[notice] Migrating up to DoctrineMigrations\Version20220324152557
[notice] finished in 286.3ms, used 20M memory, 1 migrations executed, 4 sql queries

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:controller

 Choose a name for your controller class (e.g. FierceKangarooController):
 > Admin\Game

 created: src/Controller/Admin/GameController.php
 created: templates/admin/game/index.html.twig


  Success!


 Next: Open your new controller class and add some pages!

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:form

 The name of the form class (e.g. TinyGnomeType):
 > GameType

 The name of Entity or fully qualified model class name that the new form will be bound to (empty for none):
 > Game

 created: src/Form/GameType.php


  Success!


 Next: Add fields to your form and start using it.
 Find the documentation at https://symfony.com/doc/current/forms.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console debug:route --show-controllers
 -------------------------- -------- -------- ------ ----------------------------------- ---------------------------------------------------------
  Name                       Method   Scheme   Host   Path                                Controller
 -------------------------- -------- -------- ------ ----------------------------------- ---------------------------------------------------------
  _preview_error             ANY      ANY      ANY    /_error/{code}.{_format}            error_controller::preview()
  _wdt                       ANY      ANY      ANY    /_wdt/{token}                       web_profiler.controller.profiler::toolbarAction()
  _profiler_home             ANY      ANY      ANY    /_profiler/                         web_profiler.controller.profiler::homeAction()
  _profiler_search           ANY      ANY      ANY    /_profiler/search                   web_profiler.controller.profiler::searchAction()
  _profiler_search_bar       ANY      ANY      ANY    /_profiler/search_bar               web_profiler.controller.profiler::searchBarAction()
  _profiler_phpinfo          ANY      ANY      ANY    /_profiler/phpinfo                  web_profiler.controller.profiler::phpinfoAction()
  _profiler_search_results   ANY      ANY      ANY    /_profiler/{token}/search/results   web_profiler.controller.profiler::searchResultsAction()
  _profiler_open_file        ANY      ANY      ANY    /_profiler/open                     web_profiler.controller.profiler::openAction()
  _profiler                  ANY      ANY      ANY    /_profiler/{token}                  web_profiler.controller.profiler::panelAction()
  _profiler_router           ANY      ANY      ANY    /_profiler/{token}/router           web_profiler.controller.router::panelAction()
  _profiler_exception        ANY      ANY      ANY    /_profiler/{token}/exception        web_profiler.controller.exception_panel::body()
  _profiler_exception_css    ANY      ANY      ANY    /_profiler/{token}/exception.css    web_profiler.controller.exception_panel::stylesheet()
  app_admin_game             ANY      ANY      ANY    /admin/game                         App\Controller\Admin\GameController::index()
  app_admin_game_new         ANY      ANY      ANY    /admin/game/new                     App\Controller\Admin\GameController::new()
  app_home                   ANY      ANY      ANY    /home                               App\Controller\HomeController::index()
  app_test                   ANY      ANY      ANY    /test                               App\Controller\TestController::index()
  calcul                     ANY      ANY      ANY    /test/calcul                        App\Controller\TestController::calcul()
  app_test_salut             ANY      ANY      ANY    /test/salut                         App\Controller\TestController::salut()
  app_test_tableau           ANY      ANY      ANY    /test/tableau                       App\Controller\TestController::tableau()
  app_test_tab               ANY      ANY      ANY    /test/tableau-assoc                 App\Controller\TestController::tab()
  app_test_objet             ANY      ANY      ANY    /test/objet                         App\Controller\TestController::objet()
 -------------------------- -------- -------- ------ ----------------------------------- ---------------------------------------------------------

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:crud

 The class name of the entity to create CRUD (e.g. BravePopsicle):
 > Player

 Choose a name for your controller class (e.g. PlayerController) [PlayerController]:
 > Admin\Player

 created: src/Controller/Admin/PlayerController.php
 created: src/Form/PlayerType.php
 created: templates/admin/player/_delete_form.html.twig
 created: templates/admin/player/_form.html.twig
 created: templates/admin/player/edit.html.twig
 created: templates/admin/player/index.html.twig
 created: templates/admin/player/new.html.twig
 created: templates/admin/player/show.html.twig


  Success!


 Next: Check your new CRUD by going to /admin/player/

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:crud

 The class name of the entity to create CRUD (e.g. BravePopsicle):
 > Contest

 Choose a name for your controller class (e.g. ContestController) [ContestController]:
 > Admin\Contest

 created: src/Controller/Admin/ContestController.php
 created: src/Form/ContestType.php
 created: templates/admin/contest/_delete_form.html.twig
 created: templates/admin/contest/_form.html.twig
 created: templates/admin/contest/edit.html.twig
 created: templates/admin/contest/index.html.twig
 created: templates/admin/contest/new.html.twig
 created: templates/admin/contest/show.html.twig


  Success!


 Next: Check your new CRUD by going to /admin/contest/

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:entity

 Class name of the entity to create or update (e.g. GentleElephant):
 > Contest

 Your entity already exists! So let s add some new fields!

 New property name (press <return> to stop adding fields):
 > players

 Field type (enter ? to see all types) [string]:
 > ?

Main types
  * string
  * text
  * boolean
  * integer (or smallint, bigint)
  * float

Relationships / Associations
  * relation (a wizard will help you build the relation)
  * ManyToOne
  * OneToMany
  * ManyToMany
  * OneToOne

Array/Object Types
  * array (or simple_array)
  * json
  * object
  * binary
  * blob

Date/Time Types
  * datetime (or datetime_immutable)
  * datetimetz (or datetimetz_immutable)
  * date (or date_immutable)
  * time (or time_immutable)
  * dateinterval

Other Types
  * ascii_string
  * decimal
  * guid


 Field type (enter ? to see all types) [string]:
 > ManyToMany

 What class should this entity be related to?:
 > Player

 Do you want to add a new property to Player so that you can access/update Contest objects from it - e.g. $player->getContests()? (yes/no) [yes]:
 >

 A new property will also be added to the Player class so that you can access the related Contest objects from it.

 New field name inside Player [contests]:
 > 

 updated: src/Entity/Contest.php
 updated: src/Entity/Player.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 >



  Success!


 Next: When you re ready, create a migration with php bin/console make:migration

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ php bin/console make:migration



  Success!


 Next: Review the new migration "migrations/Version20220328005047.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
 See https://symfony.com/doc/current/bundles/DoctrineMigrationsBundle/index.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ php bin/console doctrine:migrations:migrate

 WARNING! You are about to execute a migration in database "my_sdbsymfony" that could result in schema changes and data loss. Are you sure you wish to continue? (yes/no) [yes]:
 >


 [OK] Already at the latest version ("DoctrineMigrations\Version20220324152557")

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:user

 The name of the security user class (e.g. User) [User]:
 >

 Do you want to store user data in the database (via Doctrine)? (yes/no) [yes]:
 >

 Enter a property name that will be the unique "display" name for the user (e.g. email, username, uuid) [email]:
 > pseudo

 Will this app need to hash/check user passwords? Choose No if passwords are not needed or will be checked/hashed by some other system (e.g. a single sign-on server).

 Does this app need to hash/check user passwords? (yes/no) [yes]:
 >

 created: src/Entity/User.php
 created: src/Repository/UserRepository.php
 updated: src/Entity/User.php
 updated: config/packages/security.yaml


  Success!


 Next Steps:
   - Review your new App\Entity\User class.
   - Use make:entity to add more fields to your User entity and then run make:migration.
   - Create a way to authenticate! See https://symfony.com/doc/current/security.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:migration



  Success!


 Next: Review the new migration "migrations/Version20220328141028.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
 See https://symfony.com/doc/current/bundles/DoctrineMigrationsBundle/index.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ php bin/console doctrine:migrations:migrate

 WARNING! You are about to execute a migration in database "my_sdbsymfony" that
could result in schema changes and data loss. Are you sure you wish to continue?
 (yes/no) [yes]:
 >

[notice] Migrating up to DoctrineMigrations\Version20220328141028
[notice] finished in 351.5ms, used 20M memory, 1 migrations executed, 1 sql quer
ies

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:auth

 What style of authentication do you want? [Empty authenticator]:
  [0] Empty authenticator
  [1] Login form authenticator
 > 1

 The class name of the authenticator to create (e.g. AppCustomAuthenticator):
 > Login

 Choose a name for the controller class (e.g. SecurityController) [SecurityController]:
 >

 Do you want to generate a '/logout' URL? (yes/no) [yes]:
 >

 created: src/Security/LoginAuthenticator.php
 updated: config/packages/security.yaml
 created: src/Controller/SecurityController.php
 created: templates/security/login.html.twig


  Success!


 Next:
 - Customize your new authenticator.
 - Finish the redirect "TODO" in the App\Security\LoginAuthenticator::onAuthenticationSuccess() method.
 - Review & adapt the login template: templates/security/login.html.twig.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:form

 The name of the form class (e.g. DeliciousChefType):
 > CompartType

 The name of Entity or fully qualified model class name that the new form will be bound to (empty for none):
 > Contest

 created: src/Form/CompartType.php


  Success!


 Next: Add fields to your form and start using it.
 Find the documentation at https://symfony.com/doc/current/forms.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console list make
Symfony 6.0.6 (env: dev, debug: true)

Usage:
  command [options] [arguments]

Options:
  -h, --help            Display help for the given command. When no command is given display help for the list command
  -q, --quiet           Do not output any message
  -V, --version         Display this application version
      --ansi|--no-ansi  Force (or disable --no-ansi) ANSI output
  -n, --no-interaction  Do not ask any interactive question
  -e, --env=ENV         The Environment name. [default: "dev"]
      --no-debug        Switch off debug mode.
  -v|vv|vvv, --verbose  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

Available commands for the "make" namespace:
  make:auth                   Creates a Guard authenticator of different flavors
  make:command                Creates a new console command class
  make:controller             Creates a new controller class
  make:crud                   Creates CRUD for Doctrine entity class
  make:docker:database        Adds a database container to your docker-compose.yaml file
  make:entity                 Creates or updates a Doctrine entity class, and optionally an API Platform resource
  make:fixtures               Creates a new class to load Doctrine fixtures
  make:form                   Creates a new form class
  make:functional-test        Creates a new test class
  make:message                Creates a new message and handler
  make:messenger-middleware   Creates a new messenger middleware
  make:migration              Creates a new migration based on database changes
  make:registration-form      Creates a new registration form system
  make:reset-password         Create controller, entity, and repositories for use with symfonycasts/reset-password-bundle
  make:serializer:encoder     Creates a new serializer encoder class
  make:serializer:normalizer  Creates a new serializer normalizer class
  make:subscriber             Creates a new event subscriber class
  make:test                   [make:unit-test|make:functional-test] Creates a new test class
  make:twig-extension         Creates a new Twig extension class
  make:unit-test              Creates a new test class
  make:user                   Creates a new security user class
  make:validator              Creates a new validator and constraint class
  make:voter                  Creates a new security voter class

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:registration-form

 Creating a registration form for App\Entity\User

 Do you want to add a @UniqueEntity validation annotation on your User class to make sure duplicate accounts aren't created? (yes/no) [yes]:
 >

 Do you want to send an email to verify the user's email address after registration? (yes/no) [yes]:
 > no

 Do you want to automatically authenticate the user after registration? (yes/no) [yes]:
 >

 updated: src/Entity/User.php
 created: src/Form/RegistrationFormType.php
 created: src/Controller/RegistrationController.php
 created: templates/registration/register.html.twig


  Success!


 Next:
 Make any changes you need to the form, controller & template.

 Then open your browser, go to "/register" and enjoy your new form!

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:controller

 Choose a name for your controller class (e.g. GentleGnomeController):
 > Profil

 created: src/Controller/ProfilController.php
 created: templates/profil/index.html.twig


  Success!


 Next: Open your new controller class and add some pages!

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:crud

 The class name of the entity to create CRUD (e.g. AgreeablePuppy):
 > User

 Choose a name for your controller class (e.g. UserController) [UserController]:
 > Admin\UserController

 created: src/Controller/Admin/UserController.php
 created: src/Form/UserType.php
 created: templates/Admin/user/_delete_form.html.twig
 created: templates/Admin/user/_form.html.twig
 created: templates/Admin/user/edit.html.twig
 created: templates/Admin/user/index.html.twig
 created: templates/Admin/user/new.html.twig
 created: templates/Admin/user/show.html.twig


  Success!


 Next: Check your new CRUD by going to /user/

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:entity

 Class name of the entity to create or update (e.g. FiercePuppy):
 > User

 Your entity already exists! So let s add some new fields!

 New property name (press <return> to stop adding fields):
 > player

 Field type (enter ? to see all types) [string]:
 > ?

Main types
  * string
  * text
  * boolean
  * integer (or smallint, bigint)
  * float

Relationships / Associations
  * relation (a wizard will help you build the relation)
  * ManyToOne
  * OneToMany
  * ManyToMany
  * OneToOne

Array/Object Types
  * array (or simple_array)
  * json
  * object
  * binary
  * blob

Date/Time Types
  * datetime (or datetime_immutable)
  * datetimetz (or datetimetz_immutable)
  * date (or date_immutable)
  * time (or time_immutable)
  * dateinterval

Other Types
  * ascii_string
  * decimal
  * guid


 Field type (enter ? to see all types) [string]:
 > OneToOne

 What class should this entity be related to?:
 > Player

 Is the User.player property allowed to be null (nullable)? (yes/no) [yes]:
 >

 Do you want to add a new property to Player so that you can access/update User objects from it - e.g. $player->getUser()? (yes/no) [no]:
 > yes

 A new property will also be added to the Player class so that you can access the related User object from it.

 New field name inside Player [user]:
 >

 updated: src/Entity/User.php
 updated: src/Entity/Player.php

 Add another property? Enter the property name (or press <return> to stop adding fields):
 >



  Success!


 Next: When you re ready, create a migration with php bin/console make:migration


John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:migration



  Success!


 Next: Review the new migration "migrations/Version20220329221528.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
 See https://symfony.com/doc/current/bundles/DoctrineMigrationsBundle/index.html

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ php bin/console doctrine:migrations:migrate

 WARNING! You are about to execute a migration in database "my_sdbsymfony" that
could result in schema changes and data loss. Are you sure you wish to continue?
 (yes/no) [yes]:
 >

[notice] Migrating up to DoctrineMigrations\Version20220329221528
[notice] finished in 862ms, used 20M memory, 1 migrations executed, 3 sql querie
s

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ composer require encore
Info from https://repo.packagist.org: #StandWithUkraine
Using version ^1.14 for symfony/webpack-encore-bundle
./composer.json has been updated
Running composer update symfony/webpack-encore-bundle
Loading composer repositories with package information
Updating dependencies
Lock file operations: 1 install, 0 updates, 0 removals
  - Locking symfony/webpack-encore-bundle (v1.14.0)
Writing lock file
Installing dependencies from lock file (including require-dev)
Package operations: 1 install, 0 updates, 0 removals
  - Installing symfony/webpack-encore-bundle (v1.14.0): Extracting archive
Generating optimized autoload files
107 packages you are using are looking for funding.
Use the `composer fund` command to find out more!

Symfony operations: 1 recipe (a07435519e25217b52064eb02ff38876)
  - Configuring symfony/webpack-encore-bundle (>=1.10): From github.com/symfony/recipes:master
Executing script cache:clear [OK]
Executing script assets:install public [OK]

 What s next?


Some files have been created and/or updated to configure your new packages.
Please review, edit and commit them: these files are yours.

 symfony/webpack-encore-bundle  instructions:

  * Install Yarn and run yarn install

  * Start the development server: yarn encore dev-server

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn -v
1.22.18

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn self-update
yarn run v1.22.18
error Command "self-update" not found.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn -v
1.22.18

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn install
yarn install v1.22.18
info No lockfile found.
[1/4] Resolving packages...
warning @symfony/webpack-encore > resolve-url-loader > rework > css > source-map-res
olve@0.5.3: See https://github.com/lydell/source-map-resolve#deprecated
warning @symfony/webpack-encore > resolve-url-loader > rework > css > urix@0.1.0: Pl
ease see https://github.com/lydell/urix#deprecated
warning @symfony/webpack-encore > resolve-url-loader > rework > css > source-map-res
olve > urix@0.1.0: Please see https://github.com/lydell/urix#deprecated
warning @symfony/webpack-encore > resolve-url-loader > rework > css > source-map-res
olve > resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
warning @symfony/webpack-encore > resolve-url-loader > rework > css > source-map-res
olve > source-map-url@0.4.1: See https://github.com/lydell/source-map-url#deprecated
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
success Saved lockfile.
Done in 37.54s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add node-sass
yarn add v1.22.18
[1/4] Resolving packages...
warning node-sass > request@2.88.2: request has been deprecated, see https://github.
com/request/request/issues/3142
warning node-sass > request > har-validator@5.1.5: this library is no longer support
ed
warning node-sass > request > uuid@3.4.0: Please upgrade  to version 7 or higher.  O
lder versions may use Math.random() in certain circumstances, which is known to be p
roblematic.  See https://v8.dev/blog/math-random for details.
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
success Saved lockfile.
success Saved 117 new dependencies.
info Direct dependencies
└─ node-sass@7.0.1
info All dependencies
├─ @gar/promisify@1.1.3
├─ @npmcli/fs@1.1.1
├─ @npmcli/move-file@1.1.2
├─ @tootallnate/once@1.1.2
├─ @types/minimist@1.2.2
├─ @types/normalize-package-data@2.4.1
├─ abbrev@1.1.1
├─ agent-base@6.0.2
├─ agentkeepalive@4.2.1
├─ are-we-there-yet@2.0.0
├─ arrify@1.0.1
├─ asn1@0.2.6
├─ async-foreach@0.1.3
├─ asynckit@0.4.0
├─ aws-sign2@0.7.0
├─ aws4@1.11.0
├─ bcrypt-pbkdf@1.0.2
├─ cacache@15.3.0
├─ camelcase-keys@6.2.2
├─ caseless@0.12.0
├─ cliui@7.0.4
├─ color-support@1.1.3
├─ combined-stream@1.0.8
├─ dashdash@1.14.1
├─ decamelize-keys@1.1.0
├─ decamelize@1.2.0
├─ delayed-stream@1.0.0
├─ ecc-jsbn@0.1.2
├─ encoding@0.1.13
├─ env-paths@2.2.1
├─ err-code@2.0.3
├─ error-ex@1.3.2
├─ extend@3.0.2
├─ extsprintf@1.3.0
├─ forever-agent@0.6.1
├─ form-data@2.3.3
├─ gauge@3.0.2
├─ gaze@1.1.3
├─ get-caller-file@2.0.5
├─ get-stdin@4.0.1
├─ getpass@0.1.7
├─ globule@1.3.3
├─ har-schema@2.0.0
├─ har-validator@5.1.5
├─ hard-rejection@2.1.0
├─ hosted-git-info@4.1.0
├─ http-cache-semantics@4.1.0
├─ http-proxy-agent@4.0.1
├─ http-signature@1.2.0
├─ https-proxy-agent@5.0.0
├─ humanize-ms@1.2.1
├─ imurmurhash@0.1.4
├─ infer-owner@1.0.4
├─ is-arrayish@0.2.1
├─ is-lambda@1.0.1
├─ is-plain-obj@1.1.0
├─ is-typedarray@1.0.0
├─ isstream@0.1.2
├─ js-base64@2.6.4
├─ json-parse-even-better-errors@2.3.1
├─ json-schema@0.4.0
├─ json-stringify-safe@5.0.1
├─ jsprim@1.4.2
├─ lines-and-columns@1.2.4
├─ make-fetch-happen@9.1.0
├─ map-obj@1.0.1
├─ meow@9.0.0
├─ min-indent@1.0.1
├─ minimist-options@4.1.0
├─ minipass-fetch@1.4.1
├─ minipass-pipeline@1.2.4
├─ minipass-sized@1.0.3
├─ minizlib@2.1.2
├─ mkdirp@1.0.4
├─ nan@2.15.0
├─ node-gyp@8.4.1
├─ node-sass@7.0.1
├─ nopt@5.0.0
├─ normalize-package-data@3.0.3
├─ npmlog@5.0.1
├─ oauth-sign@0.9.0
├─ parse-json@5.2.0
├─ performance-now@2.1.0
├─ promise-inflight@1.0.1
├─ promise-retry@2.0.1
├─ psl@1.8.0
├─ quick-lru@4.0.1
├─ read-pkg-up@7.0.1
├─ read-pkg@5.2.0
├─ redent@3.0.0
├─ request@2.88.2
├─ require-directory@2.1.1
├─ sass-graph@4.0.0
├─ scss-tokenizer@0.3.0
├─ smart-buffer@4.2.0
├─ socks-proxy-agent@6.1.1
├─ socks@2.6.2
├─ spdx-correct@3.1.1
├─ spdx-exceptions@2.3.0
├─ sshpk@1.17.0
├─ ssri@8.0.1
├─ stdout-stream@1.4.1
├─ strip-indent@3.0.0
├─ tar@6.1.11
├─ tough-cookie@2.5.0
├─ trim-newlines@3.0.1
├─ true-case-path@1.0.3
├─ tunnel-agent@0.6.0
├─ tweetnacl@0.14.5
├─ type-fest@0.18.1
├─ unique-filename@1.1.1
├─ unique-slug@2.0.2
├─ verror@1.10.0
├─ wide-align@1.1.5
├─ wrap-ansi@7.0.0
├─ y18n@5.0.8
└─ yargs@17.4.0
Done in 12.64s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add sass-loader
yarn add v1.22.18
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
warning " > sass-loader@12.6.0" has unmet peer dependency "webpack@^5.0.0".
[4/4] Building fresh packages...

success Saved lockfile.
success Saved 2 new dependencies.
info Direct dependencies
└─ sass-loader@12.6.0
info All dependencies
├─ klona@2.0.5
└─ sass-loader@12.6.0
Done in 5.14s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add @fortawesome/fontawesome-free
yarn add v1.22.18
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
warning " > sass-loader@12.6.0" has unmet peer dependency "webpack@^5.0.0".
[4/4] Building fresh packages...
success Saved lockfile.
success Saved 1 new dependency.
info Direct dependencies
└─ @fortawesome/fontawesome-free@6.1.1
info All dependencies
└─ @fortawesome/fontawesome-free@6.1.1
Done in 13.58s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add bootstrap@4.6
yarn add v1.22.18
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
warning " > sass-loader@12.6.0" has unmet peer dependency "webpack@^5.0.0".
warning " > bootstrap@4.6.1" has unmet peer dependency "jquery@1.9.1 - 3".
warning " > bootstrap@4.6.1" has unmet peer dependency "popper.js@^1.16.1".
[4/4] Building fresh packages...

success Saved lockfile.
success Saved 1 new dependency.
info Direct dependencies
└─ bootstrap@4.6.1
info All dependencies
└─ bootstrap@4.6.1
Done in 6.19s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add jquery
yarn add v1.22.18
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
warning " > bootstrap@4.6.1" has unmet peer dependency "popper.js@^1.16.1".
warning " > sass-loader@12.6.0" has unmet peer dependency "webpack@^5.0.0".
[4/4] Building fresh packages...

success Saved lockfile.
success Saved 1 new dependency.
info Direct dependencies
└─ jquery@3.6.0
info All dependencies
└─ jquery@3.6.0
Done in 5.76s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add popper.js
yarn add v1.22.18
[1/4] Resolving packages...
warning popper.js@1.16.1: You can find the new Popper v2 at @popperjs/core, this pac
kage is dedicated to the legacy v1
[2/4] Fetching packages...
[3/4] Linking dependencies...
warning " > sass-loader@12.6.0" has unmet peer dependency "webpack@^5.0.0".
[4/4] Building fresh packages...

success Saved lockfile.
success Saved 1 new dependency.
info Direct dependencies
└─ popper.js@1.16.1
info All dependencies
└─ popper.js@1.16.1
Done in 5.46s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn add file-loader
yarn add v1.22.18
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
warning " > sass-loader@12.6.0" has unmet peer dependency "webpack@^5.0.0".
warning " > file-loader@6.2.0" has unmet peer dependency "webpack@^4.0.0 || ^5.0.0".
[4/4] Building fresh packages...

success Saved lockfile.
success Saved 1 new dependency.
info Direct dependencies
└─ file-loader@6.2.0
info All dependencies
└─ file-loader@6.2.0
Done in 5.25s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn encore dev
yarn run v1.22.18
$ C:\xampp\htdocs\my_sbd\node_modules\.bin\encore dev
Running webpack ...

 DONE  Compiled successfully in 4009ms                                      15:18:28

14 files written to public\build
Entrypoint app [big] 2.19 MiB (908 KiB) = runtime.js 13.6 KiB vendors-node_modules_b
ootstrap_dist_js_bootstrap_js-node_modules_fortawesome_fontawesome-free-4c1238.css 2
84 KiB vendors-node_modules_bootstrap_dist_js_bootstrap_js-node_modules_fortawesome_
fontawesome-free-4c1238.js 1.32 MiB app.css 592 KiB app.js 3.28 KiB 8 auxiliary asse
ts
webpack compiled successfully
Done in 13.70s.

yarn encore dev --watch

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn encore dev --watch
yarn run v1.22.18
$ C:\xampp\htdocs\my_sbd\node_modules\.bin\encore dev --watch
Running webpack ...

 DONE  Compiled successfully in 4437ms                                      15:29:11

14 files written to public\build
Entrypoint app [big] 2.19 MiB (908 KiB) = runtime.js 13.6 KiB vendors-node_modules_b
ootstrap_dist_js_bootstrap_js-node_modules_fortawesome_fontawesome-free-4c1238.css 2
84 KiB vendors-node_modules_bootstrap_dist_js_bootstrap_js-node_modules_fortawesome_
fontawesome-free-4c1238.js 1.32 MiB app.css 592 KiB app.js 3.28 KiB 8 auxiliary asse
ts
webpack compiled successfully
 WAIT  Compiling...                                                         15:29:57

 DONE  Compiled successfully in 1820ms                                      15:29:59

14 files written to public\build
Entrypoint app [big] 2.19 MiB (908 KiB) = runtime.js 13.6 KiB vendors-node_modules_b
ootstrap_dist_js_bootstrap_js-node_modules_fortawesome_fontawesome-free-4c1238.css 2
84 KiB vendors-node_modules_bootstrap_dist_js_bootstrap_js-node_modules_fortawesome_
fontawesome-free-4c1238.js 1.32 MiB app.css 592 KiB app.js 3.28 KiB 8 auxiliary asse
ts
webpack compiled successfully

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn encore prod
yarn run v1.22.18
$ C:\xampp\htdocs\my_sbd\node_modules\.bin\encore prod
Running webpack ...

 DONE  Compiled successfully in 10363ms                                     16:00:02

15 files written to public\build
Entrypoint app [big] 410 KiB (908 KiB) = runtime.18a02a75.js 1.3 KiB 288.f3107e99.cs
s 98.6 KiB 288.84dc42a5.js 169 KiB app.d2d2e18d.css 141 KiB app.e733d240.js 185 byte
s 8 auxiliary assets
webpack compiled successfully
Done in 20.90s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ yarn encore dev
yarn run v1.22.18
$ C:\xampp\htdocs\my_sbd\node_modules\.bin\encore dev
Running webpack ...

 DONE  Compiled successfully in 5346ms                                      16:24:17

17 files written to public\build
Entrypoint app [big] 2.19 MiB (908 KiB) = 6 assets 8 auxiliary assets
Entrypoint admin [big] 1.63 MiB (908 KiB) = runtime.js 13.6 KiB vendors-node_modules
_jquery_dist_jquery_js-node_modules_fortawesome_fontawesome-free_css_all_-a2488d.css
 284 KiB vendors-node_modules_jquery_dist_jquery_js-node_modules_fortawesome_fontawe
some-free_css_all_-a2488d.js 774 KiB admin.css 592 KiB admin.js 2.03 KiB 8 auxiliary
 assets
webpack compiled successfully
Done in 15.63s.

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony console make:controller

 Choose a name for your controller class (e.g. AgreeablePizzaController):
 > Search

 created: src/Controller/SearchController.php
 created: templates/search/index.html.twig


  Success!


 Next: Open your new controller class and add some pages!

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ git --version
git version 2.35.1.windows.2

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ git log
commit 420884774a1a4de5bec93e5bf4a3f85c378fcfd9 (HEAD -> main)
Author: Johncour <courpronjonathan@googlemail.com>
Date:   Wed Mar 23 11:38:23 2022 +0100

    Add initial set of files

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   .env
        modified:   .gitignore
        modified:   composer.json
        modified:   composer.lock
        modified:   config/bundles.php
        modified:   config/packages/security.yaml
        modified:   config/packages/twig.yaml
        modified:   symfony.lock
        modified:   templates/base.html.twig

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        assets/
        config/packages/webpack_encore.yaml
        database.sql
        info.txt
        migrations/Version20220324140638.php
        migrations/Version20220324152557.php
        migrations/Version20220328005047.php
        migrations/Version20220328093714.php
        migrations/Version20220328141028.php
        migrations/Version20220329221528.php
        package.json
        src/Controller/Admin/
        src/Controller/HomeController.php
        src/Controller/ProfilController.php
        src/Controller/RegistrationController.php
        src/Controller/SearchController.php
        src/Controller/SecurityController.php
        src/Controller/TestController.php
        src/Entity/Contest.php
        src/Entity/Game.php
        src/Entity/Player.php
        src/Entity/User.php
        src/Form/
        src/Repository/ContestRepository.php
        src/Repository/GameRepository.php
        src/Repository/PlayerRepository.php
        src/Repository/UserRepository.php
        src/Security/
        templates/admin/
        templates/game/
        templates/home/
        templates/menu.html.twig
        templates/profil/
        templates/registration/
        templates/search/
        templates/security/
        templates/test/
        webpack.config.js
        yarn.lock

no changes added to commit (use "git add" and/or "git commit -a")

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ git add .
warning: LF will be replaced by CRLF in .env.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in .gitignore.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in composer.json.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in composer.lock.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in config/bundles.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in config/packages/security.yaml.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in config/packages/twig.yaml.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in symfony.lock.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/base.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in assets/app.js.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in assets/bootstrap.js.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in assets/controllers.json.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in assets/controllers/hello_controller.js.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in assets/styles/app.scss.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in config/packages/webpack_encore.yaml.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in migrations/Version20220324140638.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in migrations/Version20220324152557.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in migrations/Version20220328005047.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in migrations/Version20220328093714.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in migrations/Version20220328141028.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in migrations/Version20220329221528.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in package.json.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/Admin/ContestController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/Admin/GameController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/Admin/PlayerController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/Admin/UserController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/HomeController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/ProfilController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/RegistrationController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/SearchController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/SecurityController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Controller/TestController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Entity/Contest.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Entity/Game.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Entity/Player.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Entity/User.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Form/CompartType.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Form/ContestType.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Form/GameType.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Form/PlayerType.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Form/RegistrationFormType.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Form/UserType.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Repository/ContestRepository.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Repository/GameRepository.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Repository/PlayerRepository.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Repository/UserRepository.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in src/Security/LoginAuthenticator.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/contest/_delete_form.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/contest/_form.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/contest/edit.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/contest/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/contest/new.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/contest/show.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/game/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/player/_delete_form.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/player/_form.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/player/edit.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/player/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/player/new.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/player/show.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/user/_delete_form.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/user/_form.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/user/edit.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/user/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/user/new.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/admin/user/show.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/home/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/profil/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/registration/register.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/search/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/security/login.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in templates/test/index.html.twig.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in webpack.config.js.
The file will have its original line endings in your working directory

John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   .env
        modified:   .gitignore
        new file:   assets/admin.js
        new file:   assets/app.js
        new file:   assets/bootstrap.js
        new file:   assets/controllers.json
        new file:   assets/controllers/hello_controller.js
        new file:   assets/styles/admin.scss
        new file:   assets/styles/app.scss
        modified:   composer.json
        modified:   composer.lock
        modified:   config/bundles.php
        modified:   config/packages/security.yaml
        modified:   config/packages/twig.yaml
        new file:   config/packages/webpack_encore.yaml
        new file:   database.sql
        new file:   info.txt
        new file:   migrations/Version20220324140638.php
        new file:   migrations/Version20220324152557.php
        new file:   migrations/Version20220328005047.php
        new file:   migrations/Version20220328093714.php
        new file:   migrations/Version20220328141028.php
        new file:   migrations/Version20220329221528.php
        new file:   package.json
        new file:   src/Controller/Admin/ContestController.php
        new file:   src/Controller/Admin/GameController.php
        new file:   src/Controller/Admin/PlayerController.php
        new file:   src/Controller/Admin/UserController.php
        new file:   src/Controller/HomeController.php
        new file:   src/Controller/ProfilController.php
        new file:   src/Controller/RegistrationController.php
        new file:   src/Controller/SearchController.php
        new file:   src/Controller/SecurityController.php
        new file:   src/Controller/TestController.php
        new file:   src/Entity/Contest.php
        new file:   src/Entity/Game.php
        new file:   src/Entity/Player.php
        new file:   src/Entity/User.php
        new file:   src/Form/CompartType.php
        new file:   src/Form/ContestType.php
        new file:   src/Form/GameType.php
        new file:   src/Form/PlayerType.php
        new file:   src/Form/RegistrationFormType.php
        new file:   src/Form/UserType.php
        new file:   src/Repository/ContestRepository.php
        new file:   src/Repository/GameRepository.php
        new file:   src/Repository/PlayerRepository.php
        new file:   src/Repository/UserRepository.php
        new file:   src/Security/LoginAuthenticator.php
        modified:   symfony.lock
        new file:   templates/admin/contest/_delete_form.html.twig
        new file:   templates/admin/contest/_form.html.twig
        new file:   templates/admin/contest/edit.html.twig
        new file:   templates/admin/contest/index.html.twig
        new file:   templates/admin/contest/new.html.twig
        new file:   templates/admin/contest/show.html.twig
        new file:   templates/admin/game/delete.html.twig
        new file:   templates/admin/game/form.html.twig
        new file:   templates/admin/game/index.html.twig
        new file:   templates/admin/player/_delete_form.html.twig
        new file:   templates/admin/player/_form.html.twig
        new file:   templates/admin/player/edit.html.twig
        new file:   templates/admin/player/index.html.twig
        new file:   templates/admin/player/new.html.twig
        new file:   templates/admin/player/show.html.twig
        new file:   templates/admin/user/_delete_form.html.twig
        new file:   templates/admin/user/_form.html.twig
        new file:   templates/admin/user/edit.html.twig
        new file:   templates/admin/user/index.html.twig
        new file:   templates/admin/user/new.html.twig
        new file:   templates/admin/user/show.html.twig
        modified:   templates/base.html.twig
        new file:   templates/game/_card.html.twig
        new file:   templates/home/compart.html.twig
        new file:   templates/home/index.html.twig
        new file:   templates/menu.html.twig
        new file:   templates/profil/index.html.twig
        new file:   templates/registration/register.html.twig
        new file:   templates/search/index.html.twig
        new file:   templates/security/login.html.twig
        new file:   templates/test/assoc.html.twig
        new file:   templates/test/index.html.twig
        new file:   templates/test/salut.html.twig
        new file:   templates/test/tableau.html.twig
        new file:   webpack.config.js
        new file:   yarn.lock

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   database.sql



John@LAPTOP-VF52JB84 MINGW64 /c/xampp/htdocs/my_sbd (main)
$ symfony local:server:stop
Stopping PHP-CGI
Stopping Web Server


TerminateProcess: Access is denied.














