module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-atom'

    @toolBar.addButton
      icon: 'angle-down'
      callback: 'window:toggle-menu-bar'
      tooltip: 'Toggle Menu Bar'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'file-o'
      callback: 'application:new-file'
      tooltip: 'New File'
      iconset: 'fa'

    @toolBar.addButton
      'icon': 'folder'
      'callback': 'application:open-folder'
      'tooltip': 'Open Folder'
      'iconset': 'fa'

    if atom.packages.loadedPackages['project-manager']
      @toolBar.addButton
        'icon': 'file-submodule'
        'tooltip': 'List projects'
        'callback': 'project-manager:list-projects'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'angle-right'
      'callback': 'tree-view:toggle'
      'tooltip': 'Toggle Sidebar'
      'iconset': 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'angle-double-up'
      'callback': 'editor:fold-all'
      'tooltip': 'Fold all'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'angle-double-down'
      'callback': 'editor:unfold-all'
      'tooltip': 'Unfold all'
      'iconset': 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'gg'
      'callback': 'editor:toggle-soft-wrap'
      'tooltip': 'Toggle Word Wrap'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'align-justify'
      'callback': 'editor:auto-indent'
      'tooltip': 'Auto indent (selection)'
      'iconset': 'fa'

    @toolBar.addButton
      'iconset': 'fa'
      'icon': 'expand'
      'tooltip': 'Toggle Fullscreen'
      'callback': 'window:toggle-full-screen'

    if atom.packages.loadedPackages['term3']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'term3:open-split-down'
        'tooltip': 'Term3 Split Down'
    else if atom.packages.loadedPackages['term2']
      @toolBar.addSpacer()
      @toolBar.addButton
        'icon': 'terminal'
        'callback': 'term2:open-split-down'
        'tooltip': 'Term2 Split Down'

    if atom.inDevMode()

      @toolBar.addSpacer()

      @toolBar.addButton
        'icon': 'refresh'
        'callback': 'window:reload'
        'tooltip': 'Reload Window'
        'iconset': 'ion'

      @toolBar.addButton
        'icon': 'bug'
        'callback': 'window:toggle-dev-tools'
        'tooltip': 'Toggle Developer Tools'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['git-plus']
      @toolBar.addButton
        'icon' : 'git-plain'
        'callback' : 'git-plus:menu'
        'tooltip' : 'Git plus'
        'iconset' : 'devicon'

    @toolBar.addButton
      'icon': 'gear-a'
      'callback': 'settings-view:open'
      'tooltip': 'Open Settings View'
      'iconset': 'ion'
