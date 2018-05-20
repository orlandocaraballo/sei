![Asset Pipeline](pipeline.jpg)

# Asset Pipeline

_An asset can be referred to as a digital resource that is served on a website_

Common Assets
- Javascript
- CSS
- Fonts
- Images

In the context of RoR assets are placed in the `/app/assets` location in your rails application. 

The following folders are created for you by default:
- `/app/assets/images`
- `/app/assets/javascripts`
- `/app/assets/stylesheets`

## What is the Asset Pipeline?

_The asset pipeline provides a framework to concatenate, minify and compress assets._

## Concatenation

_Concatenation is the process by which javscript or stylesheet assets are combined into one file for the purpose of serving to the application._

```bash
# the following files
/app/assets/stylesheets/users.scss
/app/assets/stylesheets/posts.scss
/app/assets/stylesheets/comments.scss

# would compile into
/app/assets/application.css
```

and

```bash
# the following files
/app/assets/javascripts/users.js
/app/assets/javascripts/posts.js
/app/assets/javascripts/comments.js

# would compile into
/app/assets/application.js
```

Concatenation is not enabled on `development`, this feature is enabled only on `production` by default.

## Compression

_Compression is the process by which a file is run thru an algorithm that shrinks the file size down to a smaller size. In the context of asset pipeline, javascript and stylesheet assets are compressed down into a smaller size._

By default the following gems are used for compressing:
- css - `yui`
- js - `uglifier`

Compressed files are stored as another file type such as `.gz` or `.gzip`.

```bash
# so these files
/app/assets/images/avatar.jpg
/app/assets/stylesheets/students.scss
/app/assets/javascripts/teacher.js

# would be compressed into these files
/app/assets/images/avatar.jpg.gz
/app/assets/stylesheets/students.scss.gz
/app/assets/javascripts/teacher.js.gz
```

## Preprocessing

Preprocessors such as `.scss` or `.coffee` are automatically setup and ready to go in RoR. This enables us to use sass and coffescript easily if we wished to do so, without the need to manually run the commands in the terminal or use koala.

## Fingerprinting

_Fingerprinting is a technique that makes the name of a file dependent on the contents of the file. When the file contents change, the filename is also changed. For content that is static or infrequently changed, this provides an easy way to tell whether two versions of a file are identical, even across different servers or deployment dates._

Example

```bash
global-908e25f4bf641868d8683022a5b62f54.css
```

Asset pipeline knows when it sees a file that has a fingerprint, that it can ignore the fingerprint as well as the dash. The actualy filename as its understood by RoR is as follows:

```bash
global.css
```

The goal of fingerprinting is to enable a particular behavior called cache busting. So normally your browser stores frequently used files requested via http for later use. It does this by it's filename. Using a fingerprint allows us to trigger a cache reset, whereby you change the name of the fingerprint so that the browser can reload the file from the server when there is a change made to it.

```bash
# this fingerprint can change from this:
global-908e25f4bf641868d8683022a5b62f54.css

# to this, when the file contents changes
global-90bh6798j332p1a8d8683022a5b62f54.css
```

## Manifest files

_The `application.css` and `application.js` are what's referred to as manifest files. Manifest files are what RoR uses to determine what css or javascript files are loaded onto the site._

The names of these files correspond to the name that is used in the `application.html.erb` file where it has the line `javascript_include_tag 'application'` and `stylesheet_link_tag 'application'` are.

```js
// application.js

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
```

```css
/* application.css */

/*
*= require_tree .
*= require_self
*/
```

### Directives

_Directives are the lines in the manifest files that indicate which files to load_

You can change these directives if you need to do so. This may be necessary if you want to only load certain js or css files on the entire site.

## Asset Helpers

### Views
- `stylesheet_link_tag`
- `javascript_include_tag`
- `image_path('[file_name]')`

CSS / Sass
- `image-url('[image_name]')`
- `font-url('[font_name]')`

JS / Coffeescript
- `image_path('[file_name]')`
- `font_path('[file_name]')`

## Precompilation

_Precompilation is the process by which RoR compresses, concatenates and fingerprints all assets on the site. This is usually accomplished via a rake task that is provided for you by RoR._

```bash
# this command precompiles assets
$ RAILS_ENV=production bin/rails assets:precompile
```

The above command will also move all the compiled assets into the `/public` directory. (similar to Sinatra) From here the assets are served as is to the web app. This command is normally run on production.

## CDN

_CDN stands for content delivery network. This network is a place for you to store your assets for faster delivery of those assets to your web app._

By default, your assets are served from the rails app server. However, it is not the fastest at doing so. It is often the case that you would want your assets served from the CDN such as [Amazon Cloudfront](https://aws.amazon.com/cloudfront/), [Akamai](https://www.akamai.com/), [MaxCDN](https://www.maxcdn.com/), etc. The entire server is designed for efficient transfer of assets to the browser. 

In order to set your cdn hostname, it would look something like this:

```ruby
config.action_controller.asset_host = 'mycdnsubdomain.fictional-cdn.com'
```

## Resource

[RoR Guides: Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html#what-is-the-asset-pipeline-questionmark)

## Practice

- Try changing some of the directives in the manifest files to see how it changes the files served onto the html.