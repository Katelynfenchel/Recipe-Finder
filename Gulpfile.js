var gulp = require('gulp'),
	less = require('gulp-less');

gulp.task('less', function(){
	gulp.src('./public/css/styles.less')
	.pipe(less())
	.pipe(gulp.dest('./public/css'))
});

gulp.task('watch', function(){
	gulp.watch(['./public/css/**/*.less'], ['less'])
});

gulp.task('default', ['watch', 'less']);