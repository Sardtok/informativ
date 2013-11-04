Informativ
==========

This is a repo containing presentations, exercises, code skeletons and
solutions for exercises. All presentations are in Norwegian, as they
are used to teach programming, robotics and other aspects of computer
science to Norwegian high schoolers visiting the University of Oslo.

## Compiling Org-Presentations ##

Org-presentations can be compiled into presentations with any Org-mode
presentation exporter in Emacs. Some of the options used are specific
for ox-reveal and Reveal.js.

First install ox-reveal. This can easily be achieved using ELPA. Run
the command package-install, for the package ox-reveal (Press
<kbd>Alt</kbd>+<kbd>X</kbd>, type *package-install*, type
ox-reveal). If the package is not available, you may have to add other
common ELPA repositories as described in the first part of the
[ELPA article](http://www.emacswiki.org/emacs/ELPA) on the Emacs Wiki.

To load ox-reveal and make the appropriate export commands available,
run the load-library command and load ox-reveal. You may also load the
library in your .emacs file:

    (require 'ox-reveal)

To export the presentation, press the following key combination:
<kbd>Ctrl</kbd>+<kbd>C</kbd>, <kbd>Ctrl</kbd>+<kbd>E</kbd>,
<kbd>Shift</kbd>+<kbd>R</kbd>, <kbd>Shift</kbd>+<kbd>R</kbd>.
