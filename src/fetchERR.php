<?php

$myArray = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);

class fetchERR {
    public $fetchERR = 'myFunc';

    function myFunc($priceArray)
    {
        exec("module load R-Project");
        exec("Rscript --vanilla myRscript.R 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20");
        #exec("Rscript --vanilla myRscript.R $priceArray[0] $priceArray[1] $priceArray[2] $priceArray[3] $priceArray[4] $priceArray[5] $priceArray[6] $priceArray[7] $priceArray[8] $priceArray[9] $priceArray[10] $priceArray[11] $priceArray[12] $priceArray[13] $priceArray[14] $priceArray[15] $priceArray[16] $priceArray[17] $priceArray[18] $priceArray[19]" );
        $myFile = fopen("fromR","r");
        $myResult = fgets($myFile);
        fclose($myFile);
        exec("rm fromR");
        return $myResult;

    }
}

$foo = new fetchERR();
echo $foo-> {'myFunc'}($myArray);
?>
