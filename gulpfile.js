// Include gulp
var gulp = require('gulp');

// Include Our Plugins
var jshint = require('gulp-jshint');
var sass = require('gulp-sass');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var scsslint = require('gulp-scss-lint');

gulp.task('scss-lint', function() {
    return gulp.src('app/assets/stylesheets/*.scss')
        .pipe(scsslint());
});

gulp.task('sass', function() {
    return gulp.src('app/assets/stylesheets/*.scss')
        .pipe(sass())
        .pipe(gulp.dest('dist/css'));
});

gulp.task('watch', function() {
	gulp.watch('app/assets/stylesheets/*.scss', ['scss-lint','sass']);
});

gulp.task('default', ['scss-lint', 'sass', 'watch']);
