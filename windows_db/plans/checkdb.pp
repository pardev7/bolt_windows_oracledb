plan windows_db::checkdb (
  TargetSpec $nodes,
  String $source,
  String $destination,
  String $value,
) {
$rs=upload_file($source,$destination, $nodes)
if $rs.ok {
 $r=run_task(
    'windows_db::emp',
    $nodes,
	destination=>$destination,
        value =>$value,
  )
  }
  if $r.ok {
  run_task(
    'windows_db::delete',
    $nodes,
	destination=>$destination,
  )
  }
  return({'results'=>$r})
}
