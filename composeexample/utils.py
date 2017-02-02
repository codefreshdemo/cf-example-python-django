import unittest

def isGood():
    return True

class UtilsTest(unittest.TestCase):
    def test(self):
        self.assertTrue(isGood())
