Lettuce Demo for tap|QA

To set up initially:
Make sure you have pip and virtualenv installed.  Instructions for Mac and Linux, or Windows with Cygwin.

cd /path/to/lettuce-demo
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
lettuce

To run tests:
cd /path/to/lettuce-demo
source venv/bin/activate
lettuce

OR

cd /path/to/lettuce-demo
venv/bin/lettuce

To run specific tagged scenarios, use -t (eg lettuce -t C001)
