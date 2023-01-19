<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" 
        <?php if(User::admin()): ?>
        href="/panel/admin"
        <?php else: ?>
        href="/"
      <?php endif; ?>
      ><?php echo content::nav(); ?></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link <?php echo segment(1) != '' ?: 'active'; ?>" href="/">home</a>
          </li>

          <li class="nav-item">
            <a href="/profile/info" class="nav-link text-danger">@<?php echo User::user_login(); ?></a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <?php echo content::other_pages(); ?>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" 
              href="/mode/<?php echo css_mode()->code; ?>">
                <?php echo css_mode()->css_mode == 'dark' ? 'light' : 'dark'; ?>
              </a>
              <a class="dropdown-item <?php echo segment(2) != 'rule' ?: 'active'; ?>" href="/info/rule/page/1"><?php echo content::rule(); ?></a>
              <a class="dropdown-item <?php echo segment(2) != 'faq' ?: 'active'; ?>" href="/info/faq/page/1"><?php echo content::faq(); ?></a>
              <a class="dropdown-item <?php echo segment(1) != 'contact' ?: 'active'; ?>" href="/contact"><?php echo content::contact(); ?></a>

              <?php if(segment(1).'/'.segment(2) == 'note/page'): ?>
               <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="<?php echo segment(1); ?>/create"><?php echo content::btn_create(); ?></a>
              <?php endif; ?>

              <?php if(segment(1) == 'profile'): ?>
               <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="<?php echo segment(1); ?>/update"><?php echo content::btn_update(); ?></a>
              <?php endif; ?>

            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>


