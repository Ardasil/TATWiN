from robot.api import ResultWriter
from robot.api import TestSuiteBuilder
from selenium import webdriver

class MyRunner:
    def run_test(self):
        suite = TestSuiteBuilder().build('.')
        suite.filter(included_suites=['Tests'])
        suite.run(output="output.xml")
        ResultWriter("output.xml").write_results(report="Report.html", log_level='TRACE', log="Logs.html")


suite = MyRunner()
suite.run_test()
