<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" style="background-color: #232531 !important;">
    <div class="container">
        <a class="navbar-brand" style="font-weight: bold; font-family: 'Alegreya', serif; font-size: 25px;" href="<?php echo base_url('home') ?>">E-Voting Himatemia Unila</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <?php echo uri_string() == "home" ? 'active' : ' ' ?>">
                    <a class="nav-link disabled" href="<?php echo base_url('home') ?>"
                        style="color: #ffffff;
                        font-weight: normal; font-family: 'Crimson Text', serif; font-size: 20px;"
                    ><i class="fa fa-user-circle" aria-hidden="true"></i>&nbsp;<?php echo $this->session->userdata('nama'); ?></a>
                </li>
                
                <?php if ($this->session->userdata('logged')) :
     
                    $signOut = base_url('user/userAuth/logout');
                    echo '<li class="nav-item active"><a class="nav-link" style="
                    font-weight: normal; font-family: Crimson Text, serif; font-size: 20px;" href="' . $signOut . '"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> Logout</a></li>'
                    ?>

                <?php endif ?>

                
            </ul>
        </div>
    </div>
</nav>
<!-- End Navigation -->