var gulp          = require('gulp');
var sass          = require('gulp-sass')(require('sass'));
var cssnano       = require('gulp-cssnano');
var sourcemaps    = require('gulp-sourcemaps');
var jshint        = require('gulp-jshint');
var uglify        = require('gulp-uglify');
var concat        = require('gulp-concat');
var bust          = require('gulp-buster');
var imagemin      = require('gulp-imagemin');
var cache         = require('gulp-cache');
var del           = require('del');
var runSequence   = require('gulp4-run-sequence');
var watch         = require('gulp-chokidar')(gulp);

// Gulp css
gulp.task('css', function(){
    return gulp.src([
        'assets/vn/css/index.scss',
        // 'assets/css/scss/**/*.scss',
    ])
    .pipe(sourcemaps.init())    //phải đứng đầu tiên
    .pipe(sass().on('error', sass.logError))
    .pipe(concat('main.css'))
    .pipe(cssnano())
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('dist/css/'))
});
// Gulp thư viện css
gulp.task('css-tool', function(){
    return gulp.src([
        // 'bower_components/bootstrap/dist/css/bootstrap.min.css',
        'assets/css/fake-bootstrap.css',
        'bower_components/slick-carousel/slick/slick-theme.css',
        'bower_components/slick-carousel/slick/slick.css',
    ])
    .pipe(sourcemaps.init())
    .pipe(concat('tool.min.css'))
    .pipe(cssnano())
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('dist/css/'))
    .pipe(bust({relativePath: './dist/css'}))
    .pipe(gulp.dest('dist/.cache/'))
});
// Gulp js
gulp.task('js', function(){
    return gulp.src([
        'assets/js/main.js',
    ])
    .pipe(jshint())
    .pipe(jshint.reporter('default'))
    .pipe(concat('main.js'))
    .pipe(uglify())
    .pipe(gulp.dest('dist/js/'))
});
// Gulp thư viện js
gulp.task('js-tool', function(){
    return gulp.src([
        // 'bower_components/jquery/dist/jquery.min.js',
        // 'bower_components/bootstrap/dist/js/bootstrap.min.js',
        // 'assets/js/fake-bootstrap.js',
        'assets/js/fake-slick.js',
        // 'bower_components/slick-carousel/slick/slick.min.js',
        'assets/js/slick.js',
    ])
    .pipe(concat('tool.min.js'))
    .pipe(uglify())
    .pipe(gulp.dest('dist/js/'))
    .pipe(bust({relativePath: './dist/js'}))
    .pipe(gulp.dest('dist/.cache/'))
});
// Gulp tất cả dạng ảnh
gulp.task('images', function(){
    return gulp.src([
        'assets/images/**/*.+(png|jpg|jpeg|gif|svg)',
        // 'bower_components/slick-carousel/slick/ajax-loader.gif',
    ])
    .pipe(cache(imagemin({
        interlaced: true
    })))
    .pipe(gulp.dest('dist/images'))
});
gulp.task('images2', function(){
    return gulp.src([
        // 'assets/images/**/*.+(png|jpg|jpeg|gif|svg)',
        'bower_components/slick-carousel/slick/ajax-loader.gif',
    ])
    .pipe(cache(imagemin({
        interlaced: true
    })))
    // .pipe(webp({quality: 50}))
    .pipe(gulp.dest('dist/css'))
});
// Gulp fonts
gulp.task('fonts', function() {
    return gulp.src([
        // 'bower_components/font-awesome/fonts/**/*',
        'assets/fonts/**/*',
    ])
    .pipe(gulp.dest('dist/fonts'))
})
gulp.task('fonts2', function() {
    return gulp.src([
        // 'bower_components/font-awesome/fonts/**/*',
        'bower_components/slick-carousel/slick/fonts/**/*',
    ])
    .pipe(gulp.dest('dist/css/fonts'))
})


// Clean file, folder mỗi lần gulp
gulp.task('clean', async function() {
    return del.sync([
        // 'dist',
        'dist/css/main.css',
        'dist/js/main.js',
        'dist/fonts',
        'dist/images',
    ])
})
// Lệnh gulp default
gulp.task('default', async function () {
    runSequence('clean', 'css', 'js', 'images', 'images2', 'fonts', 'fonts2')
})
// Lệnh gulp watch (default : tên của task sẽ bị watch)
gulp.task('watch', function () {
    watch('assets/**/*', ['default']);
});


// Chia thư viện css,js ra thực thi riêng cho nhẹ task, và nén min luôn 1 lần vì nén lâu
// Clean thư viện css,js mỗi lần gulp
gulp.task('clean-tool', async function() {
    return del.sync([
        'dist/css/tool.min.css',
        'dist/js/tool.min.js',
    ])
})
// Lệnh gulp gulp-tool
gulp.task('gulp-tool', async function () {
    runSequence('clean-tool', 'css-tool', 'js-tool')
})
