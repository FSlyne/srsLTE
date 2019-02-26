STARTCMD="srsenb --scheduler.pusch_max_mcs 10 --enb.n_prb 25"

pkill srsenb
sleep 60
nohup $STARTCMD 2>&1 >/dev/null &
sleep 60
pkill srsenb
