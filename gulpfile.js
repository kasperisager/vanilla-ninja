var es = require('event-stream')
  , gulp = require('gulp')
  , less = require('gulp-less')
  , sass = require('gulp-sass')
  , concat = require('gulp-concat')
  , coffee = require('gulp-coffee')
  , uglify = require('gulp-uglify')
  , server = require('tiny-lr')()
  , livereload = require('gulp-livereload');

var lessStream = function () {
  return gulp.src('src/styles/less/*.less')
    .pipe(less({ paths: 'bower_components/bootstrap/less' }));
};

var sassStream = function () {
  return gulp.src('src/styles/sass/*.scss')
    .pipe(sass());
};

var coffeeStream = function () {
  return gulp.src('src/scripts/coffee/*.coffee')
    .pipe(coffee());
};

var vendorsStream = function () {
  return gulp.src([
    'bower_components/modernizr/modernizr.js',
    'bower_components/conditionizr/dist/conditionizr.js'
  ]);
};

gulp.task('styles', function () {
  es.merge(lessStream(), sassStream())
    .pipe(concat('custom.css'))
    .pipe(gulp.dest('design'))
    .pipe(livereload(server));
});

gulp.task('scripts', function () {
  es.merge(vendorsStream(), coffeeStream())
    .pipe(uglify())
    .pipe(concat('custom.js'))
    .pipe(gulp.dest('js'))
    .pipe(livereload(server));
});

gulp.task('ninja', function () {
  server.listen(35729, function (err) {
    if (err) return console.log(err);

    gulp.watch('src/styles/**/*', function () {
      gulp.run('styles');
    });

    gulp.watch('src/scripts/**/*', function () {
      gulp.run('scripts');
    });
  });
});
