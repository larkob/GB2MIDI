#!/usr/bin/perl -w
$data = "";
$gb_file = $ARGV[0];
$mid_file = $ARGV[1];

open (GBFILE, "$gb_file");
binmode(GBFILE); 
read(GBFILE, $data, -s $gb_file, 0);
close(GBFILE);

$pos = rindex($data, "MThd\x00\x00\x00\x06\x00\x00\x00\x01\x01\xE0MTrk");
$end = rindex($data, "CHS");
if ($pos>0 && $end>0) {
  open (MIDFILE, ">$mid_file");
  binmode(MIDFILE); 
  $midi_data = substr($data, $pos, $end-$pos);
  print MIDFILE $midi_data;
  close(MIDFILE);
}