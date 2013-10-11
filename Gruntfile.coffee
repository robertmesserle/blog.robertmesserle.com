module.exports = ( grunt ) ->

  grunt.initConfig
    stylus:
      compile:
        options:
          paths: [ 'stylus' ]
          import: [ 'nib' ]
        files:
          'build/master.css': 'stylus/master.styl'
    bake:
      core:
        files:
          'build/master.html': 'views/template.html'
    watch:
      scripts:
        files: [ 'Gruntfile.coffee', 'stylus/**', 'views/**' ]
        tasks: [ 'stylus', 'bake' ]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-bake'

  grunt.registerTask 'default', [ 'stylus', 'bake' ]