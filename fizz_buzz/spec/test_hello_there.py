import unittest
from src import hello_there

class Test(unittest.TestCase):
    def test_should_say_hello(self):
        self.assertEqual(say_hello("Qualified"), "Hello, Qualified!")

if __name__ == '__main__':
    unittest.main()
