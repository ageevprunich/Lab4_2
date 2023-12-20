import unittest
import webapp as tested_app
import json

class FlaskAppTests(unittest.TestCase):
    def setUp(self):
        self.webapp = tested_app.app.test_client()
    
    def test_get_hello(self):
        r=self.webapp.get('/')
        self.assertEqual(r._status_code, 200)
        self.assertEqual(r.get_data(), b'Hello world from flask')

if __name__ == '__main__':
    unittest.main()