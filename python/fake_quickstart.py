import time

def fake_service_sample():
    """
    Fake sample - that fails one of 10 times.
    """
    from random import randrange
    
    random_num = randrange(10)
    if random_num != 9:
      time.sleep(1.5)
      print("Passing")
    else:
      print("Failed")
      raise Exception("Service failed due to too many requests.")
