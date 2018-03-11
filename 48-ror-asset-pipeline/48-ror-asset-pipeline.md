
Introduction
What is an asset?
Javascript
CSS
Fonts
Images
Where are assets found?
What is the asset pipeline?
What does it do?
Concatenation
Compression
Preprocessing
Fingerprinting

Concatenation
Manifest files
Directives
Where do I find manifest files?
application.js
application.css
Can I change directives?
Asset Helpers
Views
stylesheet_link_tag
javascript_include_tag
image_path('[file_name]')
CSS / Sass
image-url('[image_name]')
font-url('[font_name]')
JS / Coffeescript
image_path('[file_name]')
font_path('[file_name]')

Compression
Css
Default: yui
JS
Default: uglifier

Preprocessing
Sass
Coffeescript

Environments
Review of environments
Development
Staging / Production

Precompilation
What is precompilation?
What does it do?
Command
bundle exec RAILS_ENV=production bin/rails assets:precompile
When do you run the command?

Public folder
Bypasses asset pipeline
All precompiled files are moved here

CDN
What is a CDN?
Why use a CDN?
How to set Rails host to CDN host
