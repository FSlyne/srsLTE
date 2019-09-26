import subprocess
import threading
from ona.zmqbroker import *
import os
import time

SEC=5

devnull = open(os.devnull, 'wb')

class zmqsub(zmqSubscriber):
  def process(self,mst,msg):
#     print "timestamp=%s, msg=%s" %(mst,msg)
    # channel:enodeb1 1551178699.801012 setprb:050
    (cat,tstamp,cmd)=msg.split(" ")
#    print cmd
    (prefix,rawprb) = cmd.split(":")
    prb=rawprb.lstrip("0")
    prb=prb.replace('\x00','')
    print "UE 2 Stack resetting"
    stop_ue()
    time.sleep(SEC)
#     print "Starting UE"
    start_ue()

class SubscriberThread(threading.Thread):
  def run(self):
    b=zmqsub("channel:enodeb1","10.10.10.41")


def start_ue():
    l=["nohup","srsue"]
#    print "list >",l
    proc=subprocess.Popen(l,stdout=devnull, stderr=devnull)

def stop_ue():
    proc=subprocess.Popen(["pkill","srsue"],stdout=devnull,stderr=devnull)

if __name__=='__main__':
     SubscriberThread().start()

     print "Stopping UE"
     stop_ue()
     time.sleep(SEC)
     prb=25
     print "Starting UE"
     start_ue()
     time.sleep(SEC)

     while True:
         time.sleep(1)
