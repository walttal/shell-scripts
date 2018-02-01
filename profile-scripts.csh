if ( `echo $SHELL` != '/bin/sh' && `groups | grep -woP 'netadm'` == "netadm" ) then 
    #source /te-networking/netdev_alias_csh
    set n=`wc -l </te-networking/netdev_alias`
    set i=1
    while ($i <= $n)
       set line="`awk '{if (NR == $i) print}' /networking/netdev_alias`"
       eval `echo "${line}" | sed 's/=/ /'`
       @ i ++
    end
endif 
