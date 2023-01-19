<?php $guest = $data->guest; ?>
<div class="card mb-4">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>show</span>
            </div>
            <div class="col-md-2">
                <a class="btn btn-sm btn-danger" href="/panel/guest/destroy/<?php echo $guest->guest_id; ?>">delete</a>
                <a class="btn btn-sm btn-success" href="/panel/guest/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <h3 class="mt-4 mb-3">#<?php echo $guest->guest_ip; ?></h3>

        <div class="row">
            <div class="col-lg-12">
                <p class="lead"><?php echo $guest->guest_visit; ?></p>
                <hr>

                <div class="my-3">
                    <div>
                        <span>
                            <span> Nəşr edilmişdir: </span>
                            <span><?php echo $guest->guest_created; ?></span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

