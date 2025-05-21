# CodeIgniter 4 Application Starter

## What is CodeIgniter?

CodeIgniter is a PHP full-stack web framework that is light, fast, flexible and secure.
More information can be found at the [official site](https://codeigniter.com).

This repository holds a composer-installable app starter.
It has been built from the
[development repository](https://github.com/codeigniter4/CodeIgniter4).

More information about the plans for version 4 can be found in [CodeIgniter 4](https://forum.codeigniter.com/forumdisplay.php?fid=28) on the forums.

You can read the [user guide](https://codeigniter.com/user_guide/)
corresponding to the latest version of the framework.

## Installation & updates

`composer create-project codeigniter4/appstarter` then `composer update` whenever
there is a new release of the framework.

When updating, check the release notes to see if there are any changes you might need to apply
to your `app` folder. The affected files can be copied or merged from
`vendor/codeigniter4/framework/app`.

## Setup

Copy `env` to `.env` and tailor for your app, specifically the baseURL
and any database settings.

## Important Change with index.php

`index.php` is no longer in the root of the project! It has been moved inside the *public* folder,
for better security and separation of components.

This means that you should configure your web server to "point" to your project's *public* folder, and
not to the project root. A better practice would be to configure a virtual host to point there. A poor practice would be to point your web server to the project root and expect to enter *public/...*, as the rest of your logic and the
framework are exposed.

**Please** read the user guide for a better explanation of how CI4 works!

## Repository Management

We use GitHub issues, in our main repository, to track **BUGS** and to track approved **DEVELOPMENT** work packages.
We use our [forum](http://forum.codeigniter.com) to provide SUPPORT and to discuss
FEATURE REQUESTS.

This repository is a "distribution" one, built by our release preparation script.
Problems with it can be raised on our forum, or as issues in the main repository.

## Server Requirements

PHP version 8.1 or higher is required, with the following extensions installed:

- [intl](http://php.net/manual/en/intl.requirements.php)
- [mbstring](http://php.net/manual/en/mbstring.installation.php)

> [!WARNING]
> - The end of life date for PHP 7.4 was November 28, 2022.
> - The end of life date for PHP 8.0 was November 26, 2023.
> - If you are still using PHP 7.4 or 8.0, you should upgrade immediately.
> - The end of life date for PHP 8.1 will be December 31, 2025.

Additionally, make sure that the following extensions are enabled in your PHP:

- json (enabled by default - don't turn it off)
- [mysqlnd](http://php.net/manual/en/mysqlnd.install.php) if you plan to use MySQL
- [libcurl](http://php.net/manual/en/curl.requirements.php) if you plan to use the HTTP\CURLRequest library
**
  API List**
  **http://localhost:8080/api/temples**

  [{"id":"1","name":"Sree Krishna Temple","location":"Guruvayoor","district":"Thrissur"},{"id":"2","name":"Sabarimala Ayyappa Temple","location":"Sabarimala","district":"Pathanamthitta"},{"id":"3","name":"Chottanikkara Devi Temple","location":"Chottanikkara","district":"Ernakulam"},{"id":"4","name":"Attukal Bhagavathy Temple","location":"Thiruvananthapuram","district":"Thiruvananthapuram"},{"id":"5","name":"Vaikom Mahadeva Temple","location":"Vaikom","district":"Kottayam"},{"id":"6","name":"Mannarasala Nagaraja Temple","location":"Haripad","district":"Alappuzha"},{"id":"7","name":"Thirunelli Temple","location":"Wayanad","district":"Wayanad"},{"id":"8","name":"Lokanarkavu Temple","location":"Vadakara","district":"Kozhikode"},{"id":"9","name":"Parassinikkadavu Muthappan Temple","location":"Kannur","district":"Kannur"},{"id":"10","name":"Kaviyoor Mahadeva Temple","location":"Kaviyoor","district":"Pathanamthitta"}]

  **http://localhost:8080/api/temples/1**
  {"temple":{"id":"1","name":"Sree Krishna Temple","location":"Guruvayoor","district":"Thrissur"},"poojas":[{"id":"1","temple_id":"1","name":"Usha Pooja","price":"150"},{"id":"2","temple_id":"1","name":"Noon Pooja","price":"200"},{"id":"3","temple_id":"1","name":"Athazha Pooja","price":"250"}]}
