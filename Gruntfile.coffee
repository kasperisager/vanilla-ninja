module.exports = (grunt) ->
  
    # Project configuration.
    grunt.initConfig

        compass:
            dist:
                options:
                    cssDir: 'design'
                    sassDir: 'src/styles/sass'
                    imagesDir: 'src/images'
                    javascriptsDir: 'src/scripts/js'
                    fontsDir: 'src/fonts'
                    outputStyle: 'nested'
                    relativeAssets: true
                    noLineComments: true

        less:
            bootstrap:
                files:
                    'design/bootstrap.css' : 'src/styles/less/**/*.less'

        coffee:
            ninja:
                files: 'js/ninja.js' : 'src/scripts/coffee/**/*.coffee'

        uglify:
            options:
                preserveComments: 'some'
            modernizr:
                files: 'js/modernizr.min.js' : 'components/modernizr/modernizr.js'
            conditionizr:
                files: 'js/conditionizr.min.js' : 'components/conditionizr/js/conditionizr.js'

        watch:
            compass:
                files: 'src/styles/sass/**/*.sass',
                tasks: 'compass'
                options:
                    nospawn: true
            less:
                files: 'src/styles/less/**/*.less',
                tasks: 'less'
                options:
                    nospawn: true
            coffee:
                files: 'src/scripts/coffee/**/*.coffee',
                tasks: 'coffee'
                options:
                    nospawn: true

        reloadr:
            files: ['design/**/*.css', 'js/**/*.js']

    # Load modules.
    grunt.loadNpmTasks 'grunt-devtools'
    grunt.loadNpmTasks 'grunt-reloadr'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-contrib-compass'
    grunt.loadNpmTasks 'grunt-contrib-less'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    
    # Grunt tasks.
    grunt.registerTask 'default', ['less', 'coffee']
    grunt.registerTask 'ninja', ['reloadr', 'watch']
