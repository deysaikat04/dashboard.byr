<!-- Main navbar -->
<div class="navbar navbar-default header-highlight">
    <div class="navbar-header">
        <a class="navbar-brand" href="<?php echo base_url()?>">
            <h3 class="dashboard_logo_text">
                Book Your Rooms
            </h3>
        </a>

        <ul class="nav navbar-nav visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
            <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">

        <div class="navbar-right">
            <p class="navbar-text">Welcome, Guys!</p>
            <p class="navbar-text"><span class="label bg-success">Online</span></p>

            <ul class="nav navbar-nav">

                <li class="">
                    <a href="<?php echo base_url();?>Auth/logout">
                        <i class="icon-switch2"></i>
                        <span class="visible-xs-inline-block position-right">Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- /main navbar -->