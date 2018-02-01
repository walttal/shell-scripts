#locate in /etc/profile.d/
#tcsh shell profile scripts is ended by .csh
if ( `echo $SHELL` != '/bin/sh' && `groups | grep -woP 'netadm'` == "netadm" ) then 
    set n=`wc -l </networking/netdev_alias`
    set i=1
    while ($i <= $n)
       set line="`awk '{if (NR == $i) print}' /networking/netdev_alias`"
       eval `echo "${line}" | sed 's/=/ /'`
       @ i ++
    end
endif 
