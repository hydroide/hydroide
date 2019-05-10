TEMPLATE    = subdirs
SUBDIRS	    = commons \
    graphicswidgets \
    plugins \
    src

graphicswidgets.depends = commons
plugins.depends = graphicswidgets
src.depends = plugins
