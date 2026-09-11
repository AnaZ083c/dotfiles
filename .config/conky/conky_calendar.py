#!/usr/bin/env python3
import calendar
from datetime import date

DAY_NAMES = ["po", "to", "sr", "če", "pe", "so", "ne"]  # Mon–Sun

def main():
    today = date.today()
    cal = calendar.Calendar(firstweekday=0)  # Monday first
    weeks = cal.monthdayscalendar(today.year, today.month)

    header = f"{calendar.month_name[today.month]} {today.year}"
    day_row = " ".join(f"{d:>2}" for d in DAY_NAMES)
    width = len(day_row)

    print("${color fbf1c7} ${alignc}" + header.center(width))
    print("${color d5c4a1} ${alignc}" + day_row)

    for week in weeks:
        cells = []
        for d in week:
            if d == 0:
                cells.append("  ")
            elif d == today.day:
                cells.append(f"${{color fabd2f}}{d:>2}${{color}}")
            else:
                cells.append(f"{d:>2}")
        print("${alignc}" + " ".join(cells))

if __name__ == "__main__":
    main()
