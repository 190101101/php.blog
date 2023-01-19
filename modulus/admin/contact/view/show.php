<?php $contact = $data->contact; ?>
<div class="card mb-4">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>show</span>
            </div>
            <div class="col-md-2">
                <a class="btn btn-sm btn-danger" href="/panel/contact/destroy/<?php echo $contact->contact_id; ?>">delete</a>
                <a class="btn btn-sm btn-success" href="/panel/contact/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <h3 class="mt-4 mb-3">#<?php echo $contact->contact_theme; ?></h3>

        <div class="row">
            <div class="col-lg-12">
                <p class="lead"><?php echo $contact->contact_email; ?></p>
                <p class="lead"><?php echo $contact->contact_message; ?></p>
                <p class="lead"><?php echo $contact->contact_ip; ?></p>
                <hr>

                <div class="my-3">
                    <div>
                        <span>
                            <span> Nəşr edilmişdir: </span>
                            <span><?php echo $contact->contact_created; ?></span>
                        </span>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

