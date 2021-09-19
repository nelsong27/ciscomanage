
# @param tclfile The name of the file that contains the script to run at the device.
# @param devuser The user on the device to use to authenticate with.
# @param type The type of device that is being connect to.  Either ios or nxos are acceptable.
# @param peserver The Puppet Server to run the plan with.
plan ciscomanage::config (
Targetspec $targets,
Optional[Targetspec] $peserver = 'evertec2nix3.classroom.puppet.com',
Enum['nxosportcfg.tcl', 'reset_nxosportcfg.tcl', 'iosbase.tcl', 'reset_iosbase.tcl'] $tclfile,
Optional[String] $devuser = 'ec2-user',
Enum['ios', 'nxos'] $type
){

  # NOT USED upload_file('/Users/jerrymozes/code/cisco/ios/Boltdir/site-modules/nineks/files/commands.tcl', 'flash0://commands.tcl', $targets, 'Uploading to Cisco Device')

# Get targets and depending on the target type run the appropriate run_commands
  get_targets($targets).each | $target |  {
    case $type {
      'ios': {
        # copy up the tcl file using scp.   Uses sshkey
        run_command("scp -i /root/.ssh/AWSnelsongomez.pem /files/${tclfile} ${devuser}@${target}:flash:${tclfile}", $peserver, "Uploading script to ${target}")
        ctrl::sleep(5)
        # run command on the target to run the script that was uploaded
        run_command("tclsh ${tclfile}", $target, "Configure the ${target}")
        ctrl::sleep(5)
        # ensure that the file that was uploaded is deleted
        run_command("delete /force flash:${tclfile}", $target, "Delete the tcl file ${target}")
      }
      'nxos': {
        # copy up the tcl file using scp.   Uses sshkey
        run_command("scp -i /root/.ssh/AWSnelsongomez.pem /files/${tclfile} ${devuser}@${target}:bootflash:${tclfile}", $peserver, "Uploading script to ${target}")
        ctrl::sleep(5)
        # run command on the target to run the script that was uploaded
        run_command("tclsh bootflash:${tclfile}", $target, "Configure device ${target}")
        ctrl::sleep(5)
        # ensure that the file that was uploaded is deleted
        run_command("delete bootflash:${tclfile}", $target, "Delete the tcl file on ${target}")
      }
      default: {
        fail_plan('Unsupported device type entered', 'Wrong Type', { 'result' => 'Unsupported device type entered.  Retry with supported device type of ios or nxos.'})
      }
    }
    # return $shint
  }
}
