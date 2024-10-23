
import os
import aiml

def aiml_generate(k):
    BRAIN_FILE = "brain.dump"
    if os.path.exists(BRAIN_FILE):
        print("Loading from brain file: " + BRAIN_FILE)
        k.loadBrain(BRAIN_FILE)
    else:
        print("Parsing aiml files")
        k.bootstrap(learnFiles="std-startup.aiml", commands="load aiml b")
        print("Saving brain file: " + BRAIN_FILE)
        k.saveBrain(BRAIN_FILE)
