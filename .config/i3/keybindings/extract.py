with open('~/.config/i3/config') as f:
    lines = [line.strip() for line in f]

extracted = {"definitions": [], "bindings": []}
for i in range(len(lines)):
    start_binding = lines[i].startswith("## ")
    start_definition = lines[i].startswith("### Define ")

    if start_binding or start_definition:
        description = lines[i]
        i += 1
        while (lines[i] != "##") and (i < len(lines)):
            if not lines[i].startswith("#") and lines[i] != "":
                words = lines[i].split(" ")
                if start_binding:
                    binding = words[1].replace("$mod", "Alt").replace("$sup", "System").replace("mod4", "Alt+Shift")
                    extracted["bindings"].append((binding, description.replace("## ", "")))
                elif start_definition:
                    extracted["definitions"].append({words[1]: words[2]})

            i += 1
        start = False
        description = ""

with open("./keybindings/i3_bindings", "w") as i3_bindings:
    for binding, description in extracted["bindings"]:
        i3_bindings.write(f"{description}: {binding}\n")
