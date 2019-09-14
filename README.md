# Humble Trove Downloader

Quick and dirty script to download all games, for all operating
systems, from [Humble Trove](https://www.humblebundle.com/monthly/trove). You
need a Humble Monthly subscription to download these games.

Existing files have their md5 checksums checked versus what the Humble Bundle API
reports. If there is a mismatch, you'll need to delete or move the offending
file and run the script again.

This script was meant for archival purposes, so it does not have way to filter
what games are downloaded.

# Setup

## Pre-requisites

Install [PHP](https://www.php.net/) and [Composer](https://getcomposer.org/). If
you are using Linux, these should be available from your distribution's package
repositories.

## Install Dependencies

After cloning this repository, run `composer` in the project's main directory
 to install dependencies:

```bash
$ composer install
```

or, if you downloaded `composer.phar` separately:

```bash
$ php composer.phar install
```

# Usage

## API Key

See the [instructions here](https://github.com/talonius/hb-downloader/wiki/Using-Session-Information-From-Windows-For-hb-downloader) on
how to get a session key from your browser while logged into the Humble Bundle website. This script will not work without
it.

## Running the Script

```bash
$ ./src/download.php DOWNLOAD_PATH HUMBLE_API_KEY
```

or, if PHP is not available in your path:

```bash
$ /path/to/php src/download.php DOWNLOAD_PATH HUMBLE_API_KEY
```

Example (this is not a real key):

```bash
$ ./src/download.php /home/downloads/trove "eyJ1GzZJE0oqwEaunyOYX3yrlkFUxPJq8PFWCgkKOHM00\075|1566665561|JR7m2nO769sO2Je4C2fE"
```

# Help

### Error Message: "Trying to get property 'signed_url' of non-object"

Your API key is wrong. Double check is it correct and quote it the same way in the example under *Usage*.

