## Config and Install Guide

#### Step by step:

* Create Database with source: `app\Config\Schema\croogo150.sql`
* Copy project to your workspace
* Then, config database in file: `app\Config\database.php`
* Run app with path:
  * `Front-end: http://project-name`
  * `Back-end: http://project-name/admin/ (username: admin, password: admindemo)`
* Done.

#### Other Config:
* In app/Config/croogo.php
  * `Configure::write('debug', 1); (recommend change debug = 0 when run app)`
  * `Configure::write('Cache.disable', true); (no write cache in app/tmp)`
  * `Configure::write('Theme.error',true); (Option is true: show custom error page when error)`

#### Plugin
Some plugin is added:
  * `Product Manager: goto admin panel > content > products`
  * `Service Manager: goto admin panel > content > services`
  * `News Manager: goto admin panel > content > news`
  * `Support Manager: goto admin panel > content > support`
  * `Customer Manager: goto admin panel > content > customer`

#### Locale
Add, delete, edit, active locale is fixed
  * `Goto admin panel > extensions > locales`

#### Settings
Used to store popular info of site.
  * `Goto admin > settings > settings`

#### Attachments
Integrate [File Uploader](http://fineuploader.com/), allowed multifile upload, process bar
* `Goto Admin > Media > Attachments`
