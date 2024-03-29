<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3">Blog</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>

    <?php if(segment(2) != 'admin' && segment(2) != 'user' && segment(2) != 'setting' ): ?>
    <form action="/panel/<?php echo segment(2); ?>/search/key/value" class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <select class="form-control form-control-sm mr-1" name="field_key">
                <?php $column = db()->columns(segment(2)); ?>
                <?php $except = except($column, [1]); ?>
                <?php foreach($except as $key): ?>
                <?php $keys = explode('_', $key); ?>
                    <option value="<?php echo $key; ?>"><?php echo $keys[1]; ?></option>
                <?php endforeach; ?>
            </select>
            <input class="form-control" type="text" name="field_value" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="submit"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <?php else: ?>
        <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0"></div>
    <?php endif; ?>

    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <?php if(segment(2) == 'admin'): ?>
                <li><a class="dropdown-item" href="/panel/user/update/<?php echo User::user_id(); ?>">update</a></li>
                <?php endif; ?>
                <?php if(segment(2) != 'admin' && segment(2) != 'user' && segment(2) != 'setting' ): ?>
                <li><a class="dropdown-item" href="/panel/<?php echo segment(2); ?>/create">create</a></li>
                <?php endif; ?>
            </ul>
        </li>
    </ul>
</nav>

