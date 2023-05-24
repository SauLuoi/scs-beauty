<?php
$id = get_the_ID();
$heading = get_field('heading', $id);
?>
<div id="breadcrumb">
    <div class="container">
        <ul class="nav-breadcrumb">
            <?php wp_breadcrumbs(); ?>
        </ul>
    </div>
</div>
