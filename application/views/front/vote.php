<!DOCTYPE html>
<html lang="id">

<head>
    <?php $this->load->view('front/meta'); ?>
</head>

<body>

    <!-- Navigation -->
    <?php $this->load->view('front/navbar'); ?>

    <!-- MainContent -->
    <div class="container">
        <?php
        //Columns must be a factor of 12 (1,2,3,4,6,12)
        $numOfCols = 3;
        $rowCount = 0;
        $bootstrapColWidth = 12 / $numOfCols;
        ?>
        <div class="row">
            <?php foreach ($kandidat_data as $kandidat) : ?>
                <div class="col-md-<?php echo $bootstrapColWidth; ?>">
                    <div style="margin-top: 80px; 
                                border-radius: 15px 15px 15px 15px;
                                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.3);
                                transition: 0.3s;" 
                                class="card bg-light text-center">
                        <img class="card-img-top" style="object-fit:fill; background: #ffffff; border-radius: 15px 15px 0px 0px;" height="300px" src="<?php echo base_url('assets/uploads/kandidat/') . $kandidat->foto ?>" alt="Card image cap">
                        <div class="card-body" style="background: #ffffff;">
                            <!-- <h5 class="card-title "><?php echo $kandidat->nourut ?></h5> -->
                            <h2 class="card-text"
                                style="font-family: 'Crimson Text', serif;
                                font-weight: bold;
                                font-size: 20px;"
                            ><?php echo $kandidat->nama ?></h2>
                        </div>
                        <div class="card-footer" style="background: #ffffff; border-radius: 0px 0px 15px 15px;">
                            <a href="<?php echo base_url('home/doVote/' . $kandidat->idkandidat) ?>" 
                                style="border-radius: 0px;
                                font-family: 'Crimson Text', serif;
                                font-weight: bold;
                                font-size: 20px;"
                                class="btn btn-flat btn-primary">VOTING NOW  &nbsp;<i class="fa fa-check" aria-hidden="true"></i></a> </div>
                    </div>
                </div>
            <?php
                $rowCount++;
                if ($rowCount % $numOfCols == 0) echo '</div><div class="row">';
            endforeach ?>
        </div>
    </div>

    <!-- Footer -->
    <?php $this->load->view('front/footer'); ?>

    <!-- Javascript -->
    <?php $this->load->view('front/js'); ?>

</body>

</html>