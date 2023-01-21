<?php $section = $data->section; ?>
<div class="card mb-4">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>show</span>
            </div>
            <div class="col-md-2">
                <a class="btn btn-sm btn-success" href="/panel/section/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <h3 class="mt-4 mb-3">#<?php echo $section->section_title; ?></h3>

        <div class="row">
            <div class="col-lg-12">
                <p class="lead"><?php echo $section->section_text; ?></p>
                <hr>

                <div class="my-3">
                    <div>
                        <span>
                            <span> Nəşr edilmişdir: </span>
                            <span><?php echo $section->section_created; ?></span>
                        </span>

                         <span>
                            <a href="/panel/category/section/<?php echo $section->section_slug; ?>/page/1">
                                <span>section: </span>
                                <span><?php echo $section->section_title; ?></span>
                            </a>
                        </span>

                    </div>
                </div>
            </div>
        </div>
        
        <div class="d-flex justify-content-between">
            <a class="btn btn-sm btn-danger" href="/panel/section/destroy/<?php echo $section->section_id; ?>">delete</a>
        </div>
    </div>
</div>
