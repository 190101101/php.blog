<div class="col-lg-3 mb-4">
    <div class="list-group mb-3">
        <a <?php if(segment(1).'/'.segment(2) != 'profile/info'): ?> href="/profile/info" <?php endif; ?> 
        class="list-group-item <?php echo segment(1).'/'.segment(2) != 'profile/info' ?: 'active'; ?>">profile</a>

        <a <?php if(segment(1).'/'.segment(2) != 'article/page'): ?> href="/article/page/1" <?php endif; ?>
         class="list-group-item <?php echo segment(1).'/'.segment(2) != 'article/page' ?: 'active'; ?>">article</a>

    </div>

    <?php if(segment(1) == 'profile'): ?>
    <div class="list-group mb-3">
        <a class="list-group-item">user info</a>
        <a class="list-group-item">email: <?php echo User::user_email(); ?></a>
        <a class="list-group-item">login: <?php echo User::user_login(); ?></a>
        <a class="list-group-item">status: <?php echo User::user_status(); ?></a>
        <a class="list-group-item">created: <?php echo date_dy(User::user_created()); ?></a>
        <a class="list-group-item">updated: <?php echo date_dy(User::user_updated()); ?></a>
    </div>
    <?php endif; ?>

    <?php if(isset($data->page)): ?>
    <div class="list-group mb-3">
        <a class="list-group-item">data <?php echo $data->page->count; ?></a>
        <a class="list-group-item">page <?php echo $data->page->length; ?></a>
    </div>
    <?php endif; ?>

    <?php if(isset($data->search)): ?>
    <div class="list-group mb-3">
        <a class="list-group-item">key: <?php echo $data->search->key; ?></a>
        <a class="list-group-item">value: <?php echo $data->search->value; ?></a>
    </div>
    <?php endif; ?>
</div>
