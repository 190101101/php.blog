<?php if($data->page->count): ?>
    <?php foreach($data->article as $article): ?>
    <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <a href="/article/id/<?php echo $article->article_id; ?>" class="card h-100">
            <div class="card-body" title=" #id: <?php echo $article->article_id; ?>">
                <h6 class="text-center">
                    #<?php echo substr($article->article_title, 0, 16); ?>
                </h6>
                <p class="card-text"><?php echo substr(remove_tags($article->article_text), 0, 100); ?>...</p>
                <small><?php echo date_ymd($article->article_created); ?></small>
                <small>/ baxış: <?php echo $article->article_view; ?></small>
            </div>
        </a>
    </div>
    <?php endforeach; ?>
<?php else: ?>
<div class="col-lg-12">
    <div class="alert alert-warning">
        <?php echo content::category_empty(); ?>
    </div>
</div>
<?php endif; ?>
