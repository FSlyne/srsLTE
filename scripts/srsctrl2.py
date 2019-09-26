import subprocess
import threading
from ona.zmqbroker import *
import os
import time

SEC=2

ZMQbroker="10.10.10.41"

devnull = open(os.devnull, 'wb')

def xchng(iprb):
    if iprb == "25":
        oprb = "75"
    elif iprb == "50":
        oprb = "50"
    elif iprb == "50":
        oprb = "50"
    elif iprb == "75":
        oprb = "25"
    else:
        oprb = "25"
    return oprb

class zmqsub(zmqSubscriber):
  def process(self,mst,msg):
    print "timestamp=%s, msg=%s" %(mst,msg)
    # channel:enodeb1 1551178699.801012 setprb:050
    (cat,tstamp,cmd)=msg.split(" ")
    print cmd
    (prefix,rawprb) = cmd.split(":")
    prb=rawprb.lstrip("0")
    prb=prb.replace('\x00','')
    prb=xchng(prb) # Exchange
    print "Stopping eNodeB"
    stop_enb()
    time.sleep(SEC)
    print "Starting eNodeB with %s PRB" % prb
    start_enb(prb)

class SubscriberThread(threading.Thread):
  def run(self):
    b=zmqsub("channel:enodeb1",ZMQbroker)


def start_enb(prb):
    l=["nohup","srsenb", "--scheduler.pusch_max_mcs", "10", "--enb.n_prb", str(prb)]
#    print "list >",l
    proc=subprocess.Popen(l,stdout=devnull, stderr=devnull)

def stop_enb():
    proc=subprocess.Popen(["pkill","srsenb"],stdout=devnull,stderr=devnull)

if __name__=='__main__':
     SubscriberThread().start()

     print "Stopping eNodeB"
     stop_enb()
     time.sleep(SEC)
     prb=25
     print "Starting eNodeB with %s PRB" % prb
     start_enb(prb)
     time.sleep(SEC)

     while True:
         time.sleep(1)

