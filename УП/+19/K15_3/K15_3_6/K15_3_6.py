import sys

if len(sys.argv) > 1:
    if ("-exit" in sys.argv) or("-e" in sys.argv):
    	print("Ну вы вышли")
    	sys.exit(0)
