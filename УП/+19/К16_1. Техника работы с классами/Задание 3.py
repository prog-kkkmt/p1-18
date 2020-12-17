class VisualElements:
    def __init__(self, color, color_background):
        self.color = color
        self.color_background = color_background
    black = "#000000"
    white = "#ffffff"

unit = VisualElements("#000000", color_background = "#ffffff")
print(unit.color)
print(unit.color_background)