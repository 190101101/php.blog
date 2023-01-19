<?php $rule = $data->rule; ?>
<div class="card mb-4">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>show</span>
            </div>
            <div class="col-md-2">
                <a class="btn btn-sm btn-danger" href="/panel/rule/destroy/<?php echo $rule->rule_id; ?>">delete</a>
                <a class="btn btn-sm btn-success" href="/panel/rule/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <h3 class="mt-4 mb-3">#<?php echo $rule->rule_text; ?></h3>

        <div class="row">
            <div class="col-lg-12">

                <div class="my-3">
                    <div>
                        <span>
                            <span> Nəşr edilmişdir: </span>
                            <span><?php echo $rule->rule_created; ?></span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

