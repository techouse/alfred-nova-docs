# Laravel Nova Docs Workflow for Alfred

![GitHub release](https://img.shields.io/github/release/techouse/alfred-nova-docs.svg)
![GitHub All Releases](https://img.shields.io/github/downloads/techouse/alfred-nova-docs/total.svg)
![GitHub](https://img.shields.io/github/license/techouse/alfred-nova-docs.svg)

Search the [Laravel Nova documentation](https://nova.laravel.com/docs) using [Alfred](https://www.alfredapp.com/).

![demo](demo.gif)

## Installation

1. [Download the latest version](https://github.com/techouse/alfred-nova-docs/releases/latest)
2. Install the workflow by double-clicking the `.alfredworkflow` file
3. You can add the workflow to a category, then click "Import" to finish importing. You'll now see the workflow listed in the left sidebar of your Workflows preferences pane.

## Usage

Just type `nova` followed by your search query.

```
nova resource
```

Either press `⌘Y` to Quick Look the result, or press `<enter>` to open it in your web browser.

## Changing Branches

The workflow supports searching the documentation of all branches: `v1`, `v2`, `v3` and `v4`.
By default it searches the `v4` branch. To search branch `v3` simply type `v3` **anywhere** in your query, like so:

```
nova resource v3
```

### Note

Originally I wanted this to be a fork of [Bill Clark's Laravel Nova Documentation Search Workflow for Alfred](https://github.com/billrobclark/alfred-novadoc-search) which has a 
major issue that [inhibits a user from opening a web browser window once they press `<enter>`](https://github.com/billrobclark/alfred-novadoc-search/issues/1). And because I worked
a lot with Laravel Nova recently I figured it would be nice to still have a working Alfred workflow for Laravel Nova's docs. But since Bill's original Alfred workflow was written in 
PHP and I wrote mine in Python a pull request would not have made much sense.

Recently [macOS 12.3 removed Python 2](https://developer.apple.com/documentation/macos-release-notes/macos-12_3-release-notes#Deprecations),
so I decided to bite the bullet and re-write the workflow in Dart. That way I can simply [compile it into an executable](https://dart.dev/tools/dart-compile) which has no other dependencies.

The lightning fast search is powered by [Algolia](https://www.algolia.com) using the same index as the official [Laravel Nova Docs](https://nova.laravel.com/docs/) website.
