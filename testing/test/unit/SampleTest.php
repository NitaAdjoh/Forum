<?php
require 'olahdata.php';


class SampleTest extends \PHPUnit_Framework_TestCase
{
    public function testhitunglihat()
    {
        $hitlihat= new olahdata();
        $result2 = $hitlihat->HitungLihat();
        $this->assertEquals("berhasil", $result2);
    }
		
	}