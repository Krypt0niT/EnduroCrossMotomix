const mix = require('laravel-mix');



mix.options({
    processCssUrls: false
})
.js('src/app.js', './')
.sass('src/app.scss', './')